#!/bin/bash
# Cloudflare Pages build script
# Set LOVABLE_URL in CF Pages environment variables (Settings > Environment Variables)

if [ -z "$LOVABLE_URL" ]; then
  echo "ERROR: LOVABLE_URL environment variable is not set."
  exit 1
fi

echo "Injecting LOVABLE_URL..."
sed -i "s|__LOVABLE_URL__|$LOVABLE_URL|g" index.html
echo "Done. Deploying with URL: $LOVABLE_URL"
