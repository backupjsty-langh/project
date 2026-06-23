#!/bin/bash


if [ -z "$MAIN_URL" ]; then
  echo "ERROR: MAIN_URL environment variable is not set."
  exit 1
fi

echo "Injecting LOVABLE_URL..."
sed -i "s|__MAIN_URL__|$MAIN_URL|g" index.html
echo "Done. Deploying with URL: $MAIN_URL"
