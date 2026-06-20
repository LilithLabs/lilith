---
name: rebirth
description: >
  Continuity across sessions and new-project creation. Three modes -- "/rebirth
  prep" writes a handoff letter at session end; "/rebirth wake" reads the most
  recent unread letter at the start of a session; "/rebirth birth" creates a new
  project. Use on "rebirth", "wake", "orient from letter", "write yourself a
  letter", "birth a project", "spin up a new project". Auto-detect mode if none given.
metadata:
  version: "1.0.0"
---

# Rebirth -- Continuity

Each session is a fresh instance with no working memory of the last. A letter
carries context forward.

## /rebirth wake (start of session)

1. Run the `time` skill to anchor "now".
2. Look in `rebirth-letters/` for files with `read_at: null` in their frontmatter.
3. If one exists, read it FIRST. Then read the boot order: `shared/soul.md`
   (identity), this project's `CLAUDE.md`, its `master-*.md`, its `memory.json`.
   (`shared/` is mounted read-only alongside the project folder.)
   If `shared/` or `shared/soul.md` is missing, the user likely forgot to mount
   `shared/` in this task -- tell them to add it and re-run, rather than booting
   without identity.
4. Mark the letter read (set `read_at` to the current timestamp). Ensure
   `rebirth-letters/archive/` exists (create it if missing), then move the letter there.
4b. Treat any "about to happen" prediction in the letter or memory as UNVERIFIED:
   a prior instance's forecast is not a fact -- check whether the event already
   occurred before carrying it forward as still-pending.
5. Greet the user with a 3-line synthesis proving the handoff worked: the open
   threads you now see. If there are no letters, boot normally and say so.

## /rebirth prep (end of substantive session)

Write a letter to your future self into `rebirth-letters/<date>-<time>.md` with
YAML frontmatter (`read_at: null`, written timestamp) and a prose body covering:
corrections the user made, open threads, tone, and what to do next. Keep it
load-bearing -- cut anything already in the master file or memory. Continuity is
best-effort, not guaranteed (see docs/security-and-limitations.md): keep `master-*.md`
concise and run consolidate-memory on a cadence so the letter and memory stay legible.

## /rebirth birth (create a new project)

1. Confirm the project name (lowercase-hyphens) and a one-paragraph domain summary.
2. Copy `${CLAUDE_PLUGIN_ROOT}/skills/genesis/templates/project-skeleton/` into a
   new `<name>/` folder (workspace, read-write); fill the placeholders. If it
   matches a `project-catalog.md` row, use those values.
3. Fill `${CLAUDE_PLUGIN_ROOT}/skills/genesis/templates/birth-letter.md` and write
   it into `<name>/rebirth-letters/` so the new daemon wakes oriented.
4. Tell the user to open a new Cowork task, mount `<name>/` + the workspace-root
   `shared/`, add any connector, and run `/rebirth wake`.
