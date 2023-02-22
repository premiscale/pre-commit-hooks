#! /usr/bin/env bash
# Validate a cloud-init schema / user-data file(s).

if ! command -v cloud-init >/dev/null; then
    printf "ERROR: must install cloud-init to use this hook.\\n" >&2
    exit 1
fi

if ! command -v mapfile >/dev/null; then
    printf "ERROR: must upgrade 'bash', command 'mapfile' not found.\\n" >&2
    exit 1
fi

mapfile -t files < <(find "$1" -type f -name "*.ya?ml")

for cfg in "${files[@]}"; do
    cloud-init schema --config-file "$cfg"
done