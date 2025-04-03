#!/bin/bash
LOG_FILE="$(pwd)/hooks/hooks.log"  # Ensure log file is within the project

if [ ! -f "$LOG_FILE" ]; then
    echo "❌ No logs found."
    exit 1
fi

echo "🔍 Hook Logs:"
cat "$LOG_FILE"
