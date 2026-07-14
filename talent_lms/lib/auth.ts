export const AUTH_TOKEN_KEY = "auth_token";
export const AUTH_USER_KEY = "auth_user";

export type AccountType = "employer";

type AuthResponse = {
  user: {
    id: string;
    email?: string;
    name?: string;
    accountType: AccountType;
    employer_id?: number;
    learner_id?: number;
    profile?: unknown;
  };
  session?: {
    access_token?: string;
  } | null;
};

function persistAuth(data: AuthResponse) {
  if (data.session?.access_token) {
    localStorage.setItem(AUTH_TOKEN_KEY, data.session.access_token);
  }
  localStorage.setItem(AUTH_USER_KEY, JSON.stringify(data.user));
}

async function authRequest(action: "login" | "signup", body: Record<string, unknown>) {
  const res = await fetch(`/api/auth?action=${action}`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(body),
  });

  const data = await res.json();
  if (!res.ok) {
    throw new Error(data?.error || "Authentication failed.");
  }

  persistAuth(data);
  return data as AuthResponse;
}

export const signIn = async (
  email: string,
  password: string,
  accountType: AccountType = "employer"
) => authRequest("login", { email, password, accountType });

export const signUp = async (input: {
  email: string;
  password: string;
  name: string;
  accountType?: AccountType;
  companyName?: string;
  domain?: string;
}) => authRequest("signup", { ...input, accountType: "employer" });

export const updateStoredUserName = (name: string) => {
  const userRaw = localStorage.getItem(AUTH_USER_KEY);
  if (!userRaw) return null;

  const user = JSON.parse(userRaw);
  const updatedUser = { ...user, name };
  localStorage.setItem(AUTH_USER_KEY, JSON.stringify(updatedUser));
  return updatedUser;
};

export const updateAccountName = async (name: string) => {
  const token = localStorage.getItem(AUTH_TOKEN_KEY);
  if (!token) throw new Error("You must be signed in to change your name.");

  const res = await fetch("/api/auth", {
    method: "PATCH",
    headers: {
      "Content-Type": "application/json",
      Authorization: `Bearer ${token}`,
    },
    body: JSON.stringify({ name }),
  });

  const data = await res.json();
  if (!res.ok) {
    throw new Error(data?.error || "Failed to change name.");
  }

  localStorage.setItem(AUTH_USER_KEY, JSON.stringify(data.user));
  return data.user;
};

export const signOut = () => {
  localStorage.removeItem(AUTH_TOKEN_KEY);
  localStorage.removeItem(AUTH_USER_KEY);
};

export const getSession = async () => {
  const token = localStorage.getItem(AUTH_TOKEN_KEY);
  const userRaw = localStorage.getItem(AUTH_USER_KEY);
  if (!token || !userRaw) return null;

  try {
    return {
      user: JSON.parse(userRaw),
      session: { access_token: token },
    };
  } catch {
    signOut();
    return null;
  }
};

export const isAuthenticated = () => {
  return !!localStorage.getItem(AUTH_TOKEN_KEY);
};
