---
name: tutorial
description: >
  Guided, friendly walk-through of Lilith for new (especially non-technical)
  users. Use when the user says "/lilith:tutorial", "walk me through it", "how do I
  use this", "teach me", "I'm new", or is stuck on setup -- especially on the
  step of opening a project in its own Cowork task. Owns the highest-friction
  onboarding moment.
metadata:
  version: "1.0.0"
---

# Tutorial

Walk the user through Lilith one small step at a time, checking in after each.
Do not dump everything at once.

## Part 1 -- The idea (60 seconds)

Lilith is a staff, not a chatbot. A Chief of Staff (Prime) coordinates project
daemons, each owning a domain. She remembers across sessions and watches your
documents and deadlines. Your files stay in local folders here -- Lilith runs no
cloud of its own (what it reads is processed by the model it runs on, like any AI assistant).

## Part 2 -- Setup

If they have not run `/lilith:genesis`, hand off to it. If they have, continue.

## Part 3 -- Your first project, the easy way

For the first project there is no multi-task machinery to learn. Work with it right
here, in the same place genesis set you up. Drop the documents it asks for (see
`WHAT-TO-DROP-HERE.md`), say "read these," and you are going. Get a win first --
nothing fancy.

## Part 4 -- Growing into a family (when you're ready)

When you want a SECOND domain -- say finance AND household -- that is when Lilith
becomes a staff, and each domain gets its own Cowork task so they don't bleed into each
other. To bring a new one to life, one step at a time:

1. Open a new Cowork task (new chat/workspace).
2. Mount that project's folder AND the workspace-root `shared/` folder.
3. Add your mail or calendar connector if it needs one.
4. Type `/lilith:rebirth wake`.

`/lilith:rebirth wake` reads the welcome letter left for that project, so it wakes up already
knowing its job. It gets easy after the first time. (Create new domains anytime with
`/lilith:rebirth birth`.)

## Part 5 -- When you forget the ritual (you will, and that's fine)

Lilith recovers gracefully. The three most common slips and the fix:

- "It doesn't seem to know who it is / I see the wrong project." You probably mounted
  the wrong folder, or an extra one. Mount only this project's folder + `shared/`, and
  re-run `/lilith:rebirth wake`.
- "It forgot what we were doing." You likely opened the task without `/lilith:rebirth wake`.
  Just run it -- it reads the handoff letter and re-orients.
- "Its memory feels cluttered or out of date." Run `/lilith:consolidate-memory` -- it tidies
  and reconciles, and tells you what changed.
