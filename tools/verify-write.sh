#!/usr/bin/env bash
# verify-write.sh <path> [--syntax]
# 0 clean / 1 size-mismatch-or-empty / 2 syntax-error / 3 missing
path="${1:?usage: verify-write.sh <path> [--syntax]}"; shift || true
[ -f "$path" ] || { echo "verify: MISSING $path"; exit 3; }
[ -s "$path" ] || { echo "verify: EMPTY $path"; exit 1; }
if [ "${1:-}" = "--syntax" ]; then
  case "$path" in
    *.json) python3 -c "import json;json.load(open('$path'))" 2>/dev/null || { echo "verify: JSON SYNTAX ERROR $path"; exit 2; };;
  esac
fi
echo "verify: PASS $path ($(wc -c < "$path") bytes)"
