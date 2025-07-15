#!/bin/bash

echo "🚀 Initializing Codex Setup..."

# Install dependencies
bun install

# Create .env.local if not present
if [ ! -f ".env.local" ]; then
  cp .env.example .env.local
  echo ".env.local created. Please fill in your credentials manually."
fi

# Run DB setup
npx drizzle-kit generate
npx drizzle-kit push

# Start local dev server
bun dev

echo "✅ Codex Environment is ready."