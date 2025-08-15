#!/usr/bin/env bash

#!/usr/bin/env bash

set -e

echo "=== Setting up VS Code and Git configs ==="

# --- Git Setup ---
echo "Setting VS Code as Git editor..."
git config --global core.editor "code --wait"

# --- Git user details ---
echo "Configuring Git user..."
git config --global user.name "Your Name"
git config --global user.email "you@example.com"

echo "VS Code setup complete!"