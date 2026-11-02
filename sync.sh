#!/bin/sh
# Copies the files the review page needs from ../design-handoff. Run after any design change.
set -e
cd "$(dirname "$0")"
SRC=../design-handoff
rm -rf artboards assets design-system preview
mkdir -p artboards assets design-system/components preview
cp "$SRC"/artboards/Main.dc.html "$SRC"/artboards/Chill.dc.html "$SRC"/artboards/ChillPhone.dc.html artboards/
cp "$SRC"/assets/mbmc-logo.webp "$SRC"/assets/podcast-cover-1400.jpg assets/
cp "$SRC"/design-system/tokens.css design-system/
cp "$SRC"/design-system/components/bundle.css design-system/components/
cp "$SRC"/preview/render.html preview/
echo "synced from $SRC on $(date +%F)"
