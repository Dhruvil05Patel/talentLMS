import { NextRequest, NextResponse } from "next/server";
import { supabase } from "@/lib/supabaseClient";

type Params = { params: Promise<{ id: string }> };

export async function POST(_request: NextRequest, { params }: Params) {
  const { id } = await params;
  const { data, error } = await supabase
    .from("portal_notifications")
    .update({ shown: true, shown_at: new Date().toISOString() })
    .eq("id", Number(id))
    .select("*")
    .single();

  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ notification: data });
}

