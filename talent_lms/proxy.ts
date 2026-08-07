import { NextRequest, NextResponse } from "next/server";

const protectedRoutes = ["/ai-progress-summarizer", "/dashboard"];

export function proxy(request: NextRequest) {
  const isProtected = protectedRoutes.some((path) =>
    request.nextUrl.pathname.startsWith(path)
  );

  if (!isProtected) {
    return NextResponse.next();
  }

  const token = request.cookies.get("auth_token")?.value;
  if (token) {
    return NextResponse.next();
  }

  const loginUrl = new URL("/login", request.url);
  loginUrl.searchParams.set("redirectedFrom", request.nextUrl.pathname);
  return NextResponse.redirect(loginUrl);
}

export const config = {
  matcher: ["/ai-progress-summarizer/:path*", "/dashboard/:path*"],
};
