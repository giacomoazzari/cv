#!/usr/bin/env bash
#-------------------------------------------------------------------------------
# Compile script for Giacomo Azzari's Engineering CV
# Usage: ./compile.sh [all | 1page | 2page | clean]
#-------------------------------------------------------------------------------

set -e

# Find pdflatex in PATH or common macOS TeX Live locations
if command -v pdflatex >/dev/null 2>&1; then
    PDFLATEX="pdflatex"
elif [ -x "/Library/TeX/texbin/pdflatex" ]; then
    PDFLATEX="/Library/TeX/texbin/pdflatex"
elif [ -x "/usr/local/bin/pdflatex" ]; then
    PDFLATEX="/usr/local/bin/pdflatex"
elif [ -x "/opt/homebrew/bin/pdflatex" ]; then
    PDFLATEX="/opt/homebrew/bin/pdflatex"
else
    echo "Error: pdflatex not found. Please ensure MacTeX / TeX Live is installed."
    exit 1
fi

TARGET=${1:-all}

clean_aux() {
    echo "Cleaning auxiliary files..."
    rm -f *.aux *.log *.out *.toc *.nav *.snm *.vrb *.fls *.fdb_latexmk *.synctex.gz
}

build_1page() {
    echo "==> Compiling 1-Page Industry CV (cv.tex)..."
    $PDFLATEX -interaction=nonstopmode cv.tex >/dev/null 2>&1 || true
    $PDFLATEX -interaction=nonstopmode cv.tex
    echo "Successfully generated: cv.pdf"
}

build_2page() {
    echo "==> Compiling 2-Page Extended CV (cv_extended.tex)..."
    $PDFLATEX -interaction=nonstopmode cv_extended.tex >/dev/null 2>&1 || true
    $PDFLATEX -interaction=nonstopmode cv_extended.tex
    echo "Successfully generated: cv_extended.pdf"
}

case "$TARGET" in
    1page)
        build_1page
        ;;
    2page)
        build_2page
        ;;
    all)
        build_1page
        build_2page
        ;;
    clean)
        clean_aux
        ;;
    *)
        echo "Usage: $0 [all | 1page | 2page | clean]"
        exit 1
        ;;
esac

echo "Done!"
