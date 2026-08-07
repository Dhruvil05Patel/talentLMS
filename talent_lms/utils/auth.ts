// utils/auth.ts - Client-safe auth utilities
// This file now exports minimal client-safe helpers

export function decodeToken(token: string): Record<string, unknown> | null {
  try {
    // Base64 decode JWT payload
    const payload = token.split('.')[1];
    if (!payload) return null;

    const decoded = JSON.parse(atob(payload));
    return decoded;
  } catch {
    return null;
  }
}

// Check if token has required fields
export function hasAuth(token: string): boolean {
  if (!token || !token.startsWith('Bearer ')) {
    return false;
  }

  // Extract actual token part
  const actualToken = token.replace('Bearer ', '');
  const decoded = decodeToken(actualToken);

  // Check for required fields
  return (
    !!decoded &&
    typeof decoded.employer_id !== 'undefined' &&
    typeof decoded.exp !== 'undefined' &&
    decoded.employer_id !== null
  );
}

export function getEmployerIdFromToken(token: string): number | null {
  const decoded = decodeToken(token);
  return decoded?.employer_id ? Number(decoded.employer_id) : null;
}

export const AUTH_TOKEN_KEY = 'auth_token';
