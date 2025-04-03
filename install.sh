#!/bin/bash

# Define the hooks directory (current project hooks)
HOOKS_DIR="$(pwd)/hooks"
GIT_HOOKS_DIR="$(pwd)/.git/hooks"  # Make sure this is the repo's Git hooks directory

# Ensure Git hooks directory exists
if [ ! -d "$GIT_HOOKS_DIR" ]; then
    echo "❌ Error: This is not a Git repository. Run 'git init' first."
    exit 1
fi

# Copy hook scripts to .git/hooks/
echo "📂 Copying hooks to $GIT_HOOKS_DIR..."
cp "$HOOKS_DIR"/* "$GIT_HOOKS_DIR/" || { echo "❌ Failed to copy hooks."; exit 1; }

# Ensure hooks are executable
chmod +x "$GIT_HOOKS_DIR/"*

# Create a log file if it doesn’t exist
LOG_FILE="$HOOKS_DIR/hooks.log"
if [ ! -f "$LOG_FILE" ]; then
    touch "$LOG_FILE"
    echo "✅ Log file created at $LOG_FILE"
fi

echo "✅ Git hooks manager installed successfully!"
