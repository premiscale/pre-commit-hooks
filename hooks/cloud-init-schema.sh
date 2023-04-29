#! /usr/bin/env bash
# Validate a cloud-init schema / user-data file(s).


if ! command -v cloud-init >/dev/null; then
    printf "ERROR: must install cloud-init to use this hook.\\n" >&2
    exit 1
fi

if [ $# -lt 1 ]; then
    printf "cloud-init requires at least one argument: config file\\n" >&2
    exit 1
fi

for cfg in "$@"; do
    if ! cloud-init schema --config-file "$cfg"; then
        exit 1
    fi
done