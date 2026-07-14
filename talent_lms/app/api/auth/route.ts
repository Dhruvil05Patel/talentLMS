import { NextRequest, NextResponse } from "next/server";
import { supabase, supabaseAnon } from "@/lib/supabaseClient";
import { z } from "zod";

const accountTypeSchema = z.enum(["employer"]);

const signupSchema = z.object({
  accountType: accountTypeSchema,
  email: z.string().email(),
  password: z.string().min(8),
  name: z.string().min(1),
  companyName: z.string().optional(),
  domain: z.string().optional(),
});

const loginSchema = z.object({
  accountType: accountTypeSchema,
  email: z.string().email(),
  password: z.string().min(1),
});

const updateNameSchema = z.object({
  name: z.string().min(1),
});

type AccountType = z.infer<typeof accountTypeSchema>;

async function deleteAuthUser(userId?: string) {
  if (!userId) return;
  await supabase.auth.admin.deleteUser(userId);
}

async function findProfile(accountType: AccountType, email: string) {
  const { data, error } = await supabase
    .from("employers")
    .select("id, name, email")
    .eq("email", email)
    .maybeSingle();

  if (error) throw error;
  return data ? { ...data, accountType } : null;
}

export async function POST(request: NextRequest) {
  const url = new URL(request.url);
  const action = url.searchParams.get("action") || "login";
  const body = await request.json();

  if (action === "signup") {
    const parsed = signupSchema.safeParse(body);
    if (!parsed.success) {
      return NextResponse.json(
        { error: "Validation failed", details: parsed.error.issues },
        { status: 400 }
      );
    }

    const { accountType, email, password, name, companyName, domain } = parsed.data;

    const { data: authData, error: authError } = await supabaseAnon.auth.signUp({
      email,
      password,
      options: {
        data: {
          account_type: accountType,
          name,
        },
      },
    });

    if (authError) {
      return NextResponse.json({ error: authError.message }, { status: 400 });
    }

    const authUserId = authData.user?.id;
    if (!authUserId) {
      return NextResponse.json({ error: "Supabase did not return a user." }, { status: 500 });
    }

    try {
      const { data: employer, error } = await supabase
        .from("employers")
        .insert({
          name: companyName?.trim() || name,
          email,
          auth_user_id: authUserId,
          domain: domain?.trim() || null,
        })
        .select("id, name, email")
        .single();

      if (error) throw error;

      await supabase.auth.admin.updateUserById(authUserId, {
        user_metadata: {
          account_type: "employer",
          name,
          employer_id: employer.id,
        },
      });

      return NextResponse.json(
        {
          user: {
            id: authUserId,
            email,
            name,
            accountType,
            employer_id: employer.id,
            profile: employer,
          },
          session: authData.session,
        },
        { status: 201 }
      );
    } catch (error) {
      await deleteAuthUser(authUserId);
      const message = error instanceof Error ? error.message : "Signup failed.";
      return NextResponse.json({ error: message }, { status: 500 });
    }
  }

  const parsed = loginSchema.safeParse(body);
  if (!parsed.success) {
    return NextResponse.json({ error: "Invalid credentials" }, { status: 400 });
  }

  const { accountType, email, password } = parsed.data;
  const { data, error } = await supabaseAnon.auth.signInWithPassword({
    email,
    password,
  });

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 401 });
  }

  const metadata = data.user?.user_metadata || {};
  if (metadata.account_type && metadata.account_type !== "employer") {
    return NextResponse.json(
      { error: "Only employer accounts can sign in." },
      { status: 403 }
    );
  }

  const profile = await findProfile(accountType, email);
  if (!profile) {
    return NextResponse.json(
      { error: `No ${accountType} profile found for this account.` },
      { status: 404 }
    );
  }

  return NextResponse.json(
    {
      user: {
        id: data.user?.id,
        email: data.user?.email,
        name: metadata.name || profile.name,
        accountType,
        employer_id: profile.id,
        profile,
      },
      session: data.session,
    },
    { status: 200 }
  );
}

export async function PATCH(request: NextRequest) {
  const token = request.headers.get("authorization")?.replace("Bearer ", "") ?? null;
  if (!token) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const parsed = updateNameSchema.safeParse(await request.json());
  if (!parsed.success) {
    return NextResponse.json(
      { error: "Validation failed", details: parsed.error.issues },
      { status: 400 }
    );
  }

  const { data: authUser, error: authError } = await supabaseAnon.auth.getUser(token);
  if (authError || !authUser.user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const metadata = authUser.user.user_metadata || {};
  if (metadata.account_type !== "employer" || !metadata.employer_id) {
    return NextResponse.json({ error: "Only employer accounts can change profile names." }, { status: 403 });
  }

  const name = parsed.data.name.trim();
  const { data: employer, error } = await supabase
    .from("employers")
    .update({ name })
    .eq("id", metadata.employer_id)
    .select("id, name, email")
    .single();

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  await supabase.auth.admin.updateUserById(authUser.user.id, {
    user_metadata: {
      ...metadata,
      name,
    },
  });

  return NextResponse.json({
    user: {
      id: authUser.user.id,
      email: authUser.user.email,
      name,
      accountType: "employer",
      employer_id: employer.id,
      profile: employer,
    },
  });
}
