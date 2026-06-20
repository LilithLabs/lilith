#!/usr/bin/env bash
# safe-write.sh <path> [--syntax-check] [--ascii-only]
# Reads content from stdin and writes it reliably, bypassing editors that can
# silently truncate long multibyte files. Backs up, refuses empty input,
# optionally normalizes common multibyte punctuation to ASCII, optionally
# validates JSON.
set -euo pipefail
path="${1:?usage: safe-write.sh <path> [--syntax-check] [--ascii-only]}"; shift || true
syntax=0; ascii=0
for a in "$@"; do case "$a" in --syntax-check) syntax=1;; --ascii-only) ascii=1;; esac; done
rp="$(realpath -m -- "$path" 2>/dev/null || echo "$path")"
case "$rp" in /tmp/*|/var/tmp/*|/dev/shm/*) echo "safe-write: refusing system-temp path (resolves to $rp) (anti-drift A4, exit 4)" >&2; exit 4;; esac
content="$(cat)"
if [ -z "$content" ]; then echo "safe-write: refusing empty stdin (exit 3)" >&2; exit 3; fi
mkdir -p -- "$(dirname -- "$path")" 2>/dev/null || true
[ -f "$path" ] && cp "$path" "$path.bak"
if [ "$ascii" = 1 ]; then
  content="$(printf '%s' "$content" | python3 -c '
import sys
t = sys.stdin.read()
repl = {chr(0x2014):"--", chr(0x2013):"-", chr(0x2019):"\x27",
        chr(0x201c):"\x22", chr(0x201d):"\x22", chr(0x2192):"->",
        chr(0x2022):"*", chr(0x00a0):" "}
for k, v in repl.items():
    t = t.replace(k, v)
sys.stdout.write(t)')"
fi
printf '%s\n' "$content" > "$path"
if [ "$syntax" = 1 ]; then
  case "$path" in
    *.json) python3 -c "import json;json.load(open('$path'))" 2>/dev/null || { echo "safe-write: JSON parse failed; restoring backup (exit 2)" >&2; [ -f "$path.bak" ] && mv "$path.bak" "$path"; exit 2; };;
  esac
fi
echo "safe-write OK: $path ($(wc -c < "$path") bytes)"
