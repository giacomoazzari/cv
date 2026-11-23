#!/usr/bin/env bash
#-------------------------------------------------------------------------------
# publish.sh — One-command build, verify, clean, and sync to GitHub
# Usage: ./publish.sh ["Optional commit message"]
#-------------------------------------------------------------------------------

set -e

# Move to the directory where this script is located
cd "$(dirname "$0")"

# Detect pdflatex
if command -v pdflatex >/dev/null 2>&1; then
    PDFLATEX="pdflatex"
elif [ -x "/Library/TeX/texbin/pdflatex" ]; then
    PDFLATEX="/Library/TeX/texbin/pdflatex"
elif [ -x "/usr/local/bin/pdflatex" ]; then
    PDFLATEX="/usr/local/bin/pdflatex"
elif [ -x "/opt/homebrew/bin/pdflatex" ]; then
    PDFLATEX="/opt/homebrew/bin/pdflatex"
else
    echo "❌ Error: pdflatex not found. Please install TeX Live / MacTeX."
    exit 1
fi

COMMIT_MSG="${1:-Update CV documents and compiled PDFs ($(date +'%Y-%m-%d %H:%M'))}"

echo "--------------------------------------------------------"
echo "📄 1/4 Compiling 1-Page Resume (cv.tex)..."
$PDFLATEX -interaction=nonstopmode cv.tex >/dev/null
$PDFLATEX -interaction=nonstopmode cv.tex >/dev/null
echo "   ✓ cv.pdf compiled successfully."

echo "📄 2/4 Compiling 2-Page Extended CV (cv_extended.tex)..."
$PDFLATEX -interaction=nonstopmode cv_extended.tex >/dev/null
$PDFLATEX -interaction=nonstopmode cv_extended.tex >/dev/null
echo "   ✓ cv_extended.pdf compiled successfully."

echo "🧹 3/4 Cleaning auxiliary build files..."
rm -f cv.aux cv.log cv.out cv_extended.aux cv_extended.log cv_extended.out 2>/dev/null || true
echo "   ✓ Intermediate files cleaned."

echo "🚀 4/4 Committing and pushing to GitHub..."
git add -A

if git diff --cached --quiet; then
    echo "✨ No new changes to push (everything already up to date on GitHub)!"
    echo "--------------------------------------------------------"
    exit 0
fi

git commit -m "$COMMIT_MSG"
git push origin main

echo "--------------------------------------------------------"
echo "✅ Done! Your updated CV is now live on GitHub."
echo "--------------------------------------------------------"
