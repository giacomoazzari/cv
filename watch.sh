#!/usr/bin/env bash
#-------------------------------------------------------------------------------
# watch.sh — Auto-sync watcher for Giacomo Azzari's CV
# Automatically compiles and pushes to GitHub whenever you save cv.tex or cv_extended.tex
# Usage: ./watch.sh
#-------------------------------------------------------------------------------

cd "$(dirname "$0")"

echo "========================================================"
echo "👀 Auto-Sync Watcher is active!"
echo "   Watching cv.tex, cv_extended.tex, photo.png, signature.png"
echo "   Whenever you save changes, it will compile & push to GitHub."
echo "   Press [Ctrl + C] to stop."
echo "========================================================"

get_state() {
    cat cv.tex cv_extended.tex photo.png signature.png README.md 2>/dev/null | md5
}

LAST_STATE=$(get_state)

while true; do
    sleep 2
    CURRENT_STATE=$(get_state)
    if [ "$CURRENT_STATE" != "$LAST_STATE" ]; then
        echo ""
        echo "⚡ Change detected! Waiting 2 seconds for saves to finish..."
        sleep 2
        CURRENT_STATE=$(get_state)
        LAST_STATE="$CURRENT_STATE"

        ./publish.sh "Auto-sync CV update ($(date +'%Y-%m-%d %H:%M:%S'))"
        echo ""
        echo "👀 Waiting for next change..."
    fi
done
