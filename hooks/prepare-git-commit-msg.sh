#! /usr/bin/env bash
# https://git-scm.com/docs/githooks#_prepare_commit_msg

FILE="$1"

BRANCH_NAME=$(git symbolic-ref --short HEAD)

sed -i -e "1s/^/$BRANCH_NAME: /" "$FILE"
