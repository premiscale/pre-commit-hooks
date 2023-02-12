#! /usr/bin/env bash

BRANCH_NAME=$(git symbolic-ref --short HEAD)
BRANCH_NAME="${BRANCH_NAME##*/}"
BRANCH_IN_COMMIT=$(grep -c "$BRANCH_NAME:" "$1")

if [ -n "$BRANCH_NAME" ] && [ "$BRANCH_EXCLUDED" -ne 1 ] && [ "$BRANCH_IN_COMMIT" -lt 1 ]; then
    sed -i.bak -e "1s/^/$BRANCH_NAME: /" "$1"
fi
