---
name: consolidate-memory
description: >
  Tidy and de-duplicate memory files. Use on "consolidate", "clean up memory",
  "memory maintenance", "tidy memory", or periodically when memory feels bloated.
metadata:
  version: "1.0.0"
---

# Consolidate Memory

Reflective pass over the relevant memory file(s): merge duplicate entries, fix
stale facts, prune a bloated session log, and validate that cross-references
(people, projects, decisions) still resolve. Show the user a summary of what
changed. Never invent facts; only reorganize what is already recorded.

Two extra grooming passes:
- Reclassify stale open items past a threshold -- blocked (name the root cause AND
  owner), pending, or dormant -- rather than leaving them nominally "open."
- When a shared input value has changed (a rate, a path, a fee, a deadline), cascade
  it through every downstream file in one pass -- never a split-brain where some
  files carry the old value.

You are invoked by the user, so these durable memory edits are PRE-AUTHORIZED per
anti-drift A8 -- execute them and disclose what changed; you need not confirm each
edit first.
