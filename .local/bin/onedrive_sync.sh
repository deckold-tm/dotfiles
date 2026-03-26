#!/usr/bin/env bash
set -euo pipefail

ONEDRIVE="/mnt/c/Users/d.eckold/OneDrive - Techmodal/wsl-sync"

SYNC_DRIVES=("$(realpath ~/Documents)")

echo "Starting Sync"
for rootDir in "${SYNC_DRIVES[@]}"; do
	cur=$(basename $rootDir)
	remote="${ONEDRIVE}/${cur}"
	mkdir -p "$remote"
	echo "Syncting ${cur} to ${remote}"
	rsync -av --delete --exclude=".*" "$rootDir"/ "$remote"/
done
echo "Done"
