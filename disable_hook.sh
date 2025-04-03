#!/bin/bash
HOOK_NAME=$1
HOOK_PATH="$(pwd)/hooks/$HOOK_NAME"
LOG_FILE="$(pwd)/hooks/hooks.log"

if [ ! -f "$HOOK_PATH" ]; then
    echo "❌ Error: Hook $HOOK_NAME does not exist."
    exit 1
fi

chmod -x "$HOOK_PATH"
echo "❌ Hook $HOOK_NAME disabled."
echo "Disabled: $HOOK_NAME" >> "$LOG_FILE"
