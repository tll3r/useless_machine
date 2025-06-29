#!/usr/bin/env bash
# A truly useless script: it prints a message and then erases itself.

echo "I am a useless script. I shall now delete myself from existence..."

# Capture the path to this script (works even if called via symlink)
SCRIPT_PATH="$(readlink -f "$0" 2>/dev/null || python -c 'import os,sys; print(os.path.realpath(sys.argv[1]))' "$0")"

# Give a brief moment before self-destruction for dramatic effect
sleep 1

# Remove the script
rm -f "$SCRIPT_PATH"

exit 0 