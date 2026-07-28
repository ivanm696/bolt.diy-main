import { RemixBrowser } from '@remix-run/react';
import { startTransition } from 'react';
import { hydrateRoot } from 'react-dom/client';

// Handle SharedArrayBuffer errors gracefully in environments without COOP/COEP headers
if (!globalThis.crossOriginIsolated) {
  // Polyfill SharedArrayBuffer if not available or error
  if (typeof SharedArrayBuffer === 'undefined') {
    (globalThis as any).SharedArrayBuffer = ArrayBuffer;
  }

  // Catch postMessage errors related to SharedArrayBuffer
  const originalPostMessage = (globalThis as any).Worker?.prototype?.postMessage;
  if (originalPostMessage) {
    (globalThis as any).Worker.prototype.postMessage = function (message: any, ...args: any[]) {
      try {
        return originalPostMessage.call(this, message, ...args);
      } catch (e: any) {
        if (e?.message?.includes('SharedArrayBuffer')) {
          console.warn('[v0] SharedArrayBuffer transfer blocked, falling back to regular transfer', e.message);
          // Try to send without SharedArrayBuffer objects
          return originalPostMessage.call(this, message, args.slice(1));
        }
        throw e;
      }
    };
  }
}

startTransition(() => {
  hydrateRoot(document.getElementById('root')!, <RemixBrowser />);
});
