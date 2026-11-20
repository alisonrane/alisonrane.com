#!/usr/bin/env bash
# Copy the resume from the sibling ../resume repo into the site.
# The resume repo stays the source of truth; run this after editing it, then commit here.
set -euo pipefail
cd "$(dirname "$0")/.."
SRC="${RESUME_DIR:-../resume}"
cp "$SRC/resume.md" src/content/resume.md
cp "$SRC/Rane resume.pdf" public/Alison-Rane-resume.pdf
echo "Synced resume.md and PDF from $SRC"
