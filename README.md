# Palm Garden Wrapper

Cloudflare Pages site that embeds the Lovable deployment in a fullscreen iframe — hiding the Lovable badge and obfuscating the source URL.

## Setup

### 1. Push to GitHub
Push this folder to a GitHub repo (e.g. `palm-garden-wrapper`).

### 2. Create Cloudflare Pages project
- Go to Cloudflare Dashboard → Pages → Create a project
- Connect your GitHub repo
- **Build settings:**
  - Build command: `bash build.sh`
  - Build output directory: `/` (root)

### 3. Add Environment Variable
- In CF Pages project → Settings → Environment Variables
- Add: `LOVABLE_URL` = `https://your-actual-lovable-url.lovable.app`
- Set for both **Production** and **Preview**

### 4. Deploy
Trigger a deploy. The build script injects the URL at build time — it never appears in the deployed HTML source.

## Badge Kill Layer
The `#badge-kill` div covers the bottom-right corner where Lovable renders its badge.
Default background is `#fff`. If the site footer has a different colour, update it in `index.html`:
```css
#badge-kill { background: #YOUR_COLOUR; }
```

## Notes
- Ctrl+U, F12, Ctrl+Shift+I/J are blocked on the wrapper page
- Right-click is disabled
- The Lovable URL only exists as a CF env var — not in any committed file
