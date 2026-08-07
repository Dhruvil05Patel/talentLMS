"use client";

import { createContext, ReactNode, useCallback, useEffect, useMemo, useState } from "react";
import {
  AccountType,
  getSession,
  signIn as authSignIn,
  signOut,
  signUp as authSignUp,
  updateAccountName,
  updateStoredUserName,
} from "@/lib/auth";

type AuthUser = {
  id: string;
  email?: string;
  name?: string;
  accountType?: AccountType;
  employer_id?: number;
  learner_id?: number;
};

type SignUpInput = {
  email: string;
  password: string;
  name: string;
  accountType?: AccountType;
  companyName?: string;
  domain?: string;
};

type AuthContextValue = {
  user: AuthUser | null;
  isAuthenticated: boolean;
  employerId: number | null;
  accountType: AccountType | null;
  signIn: (email: string, password: string, accountType: AccountType) => Promise<unknown>;
  signUp: (input: SignUpInput) => Promise<unknown>;
  changeName: (name: string) => Promise<void>;
  signOut: () => void;
  loadSession: () => Promise<void>;
};

export const AuthContext = createContext<AuthContextValue>({
  user: null,
  isAuthenticated: false,
  employerId: null,
  accountType: null,
  signIn: async () => undefined,
  signUp: async () => undefined,
  changeName: async () => undefined,
  signOut: () => undefined,
  loadSession: async () => undefined,
});

export function AuthProvider({ children }: { children: ReactNode }) {
  const [user, setUser] = useState<AuthUser | null>(null);
  const [employerId, setEmployerId] = useState<number | null>(null);
  const [accountType, setAccountType] = useState<AccountType | null>(null);

  const loadSession = useCallback(async () => {
    try {
      const session = await getSession();
      if (session?.user) {
        const sessionUser = session.user as AuthUser;
        setUser(sessionUser);
        setEmployerId(sessionUser.employer_id ?? null);
        setAccountType(sessionUser.accountType ?? null);
      } else {
        setUser(null);
        setEmployerId(null);
        setAccountType(null);
      }
    } catch {
      setUser(null);
      setEmployerId(null);
      setAccountType(null);
    }
  }, []);

  const handleSignOut = useCallback(() => {
    signOut();
    setUser(null);
    setEmployerId(null);
    setAccountType(null);
  }, []);

  const changeName = useCallback(async (name: string) => {
    const trimmedName = name.trim();
    if (!trimmedName) return;

    let updatedUser: AuthUser | null = null;
    try {
      updatedUser = await updateAccountName(trimmedName) as AuthUser;
    } catch {
      updatedUser = updateStoredUserName(trimmedName) as AuthUser | null;
    }

    setUser((currentUser) => updatedUser ?? (currentUser ? { ...currentUser, name: trimmedName } : currentUser));
  }, []);

  useEffect(() => {
    void Promise.resolve().then(loadSession);
  }, [loadSession]);

  const value = useMemo(() => ({
    user,
    isAuthenticated: !!user,
    employerId,
    accountType,
    signIn: async (email: string, password: string, selectedAccountType: AccountType) => {
      const result = await authSignIn(email, password, selectedAccountType);
      await loadSession();
      return result;
    },
    signUp: async (input: SignUpInput) => {
      const result = await authSignUp(input);
      await loadSession();
      return result;
    },
    changeName,
    signOut: handleSignOut,
    loadSession
  }), [accountType, changeName, employerId, handleSignOut, loadSession, user]);

  return (
    <AuthContext.Provider value={value}>
      {children}
    </AuthContext.Provider>
  );
}
