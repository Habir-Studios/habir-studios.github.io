#!/bin/sh
# Run before pushing a store update: open store pages see the new version and reload themselves.
V=$(date +%s)
sed -i "s#<meta name=\"site-v\" content=\"[0-9]*\">#<meta name=\"site-v\" content=\"$V\">#" index.html
echo "{\"v\":$V}" > version.json
echo "version $V"
