#!/bin/bash
# Claude Developer Team — Quick Setup

echo "Setting up Claude Developer Team template..."

# Check if we're in the right place
if [ ! -f "CLAUDE.md" ]; then
    echo "Error: Run this from the project root (where CLAUDE.md is)"
    exit 1
fi

# Create memory directory if missing
mkdir -p memory

echo ""
echo "Setup complete. Open Claude Code and run /init to configure your project."
echo ""
echo "  claude"
echo "  /init"
