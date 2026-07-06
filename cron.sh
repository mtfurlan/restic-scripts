#!/usr/bin/env bash
set -euo pipefail
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

git -C "$DIR" pull || true

# TODO: check if we can connect to the right network

"$DIR/backup.sh"
