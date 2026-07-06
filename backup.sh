#!/usr/bin/env bash
set -euo pipefail
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

. "$DIR/restic.env"

set -x
restic  cat config >/dev/null 2>&1  || restic init
restic backup \
    --exclude-caches \
    --one-file-system \
    --exclude-file="$DIR/excludes" \
    "${BACKUP_TARGETS[@]}" \
    "$@"
