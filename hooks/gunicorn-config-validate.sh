#! /usr/bin/env bash
# Validate a gunicorn config file.


if ! command -v gunicorn &>/dev/null; then
    printf "gunicorn binary is not in your path. Please install or update your path.\\n" >&2
    exit 1
fi

if [ $# -ne 1 ]; then
    printf "Gunicorn hook expects at least one argument: config file\\n" >&2
    exit 1
fi

CONFIG="$1"
shift

gunicorn --check-config "$CONFIG" "$@"