#! /usr/bin/env bash
# https://git-scm.com/docs/githooks#_prepare_commit_msg


# shellcheck disable=SC2034


COMMIT_MSG_FILE="$1"
COMMIT_SOURCE="$2"
SHA1="$3"

BRANCH_NAME=$(git symbolic-ref --short HEAD)

sed -i -e "1s/^/$BRANCH_NAME: /" "$COMMIT_MSG_FILE"
