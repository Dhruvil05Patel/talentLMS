export function withTiming<T>(fn: () => Promise<T>, label: string): Promise<T> {
  const start = Date.now();
  return fn().then(result => {
    const duration = Date.now() - start;
    console.log(`[${label}] ${duration}ms`);
    return result;
  });
}

export function logRequest(method: string, url: string, body?: unknown) {
  const start = Date.now();
  return {
    end: () => {
      const duration = Date.now() - start;
      console.log(`[${method}] ${url} - ${duration}ms`);
    }
  };
}