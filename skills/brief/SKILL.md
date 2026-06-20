---
name: brief
description: >
  A status briefing across the user's day and projects. Use on "brief", "morning
  brief", "evening brief", "what's on my plate", "catch me up", "status". Pulls
  calendar via ~~calendar when connected.
metadata:
  version: "1.0.0"
---

# Brief

1. Run the `/lilith:time` skill.
2. If `~~calendar` is connected, pull today's events. If not, say so and skip.
3. For each project the user has, read its `memory.json` open items + `comms/`.
4. Synthesize a short briefing: today's calendar, open items by project, and
   anything time-sensitive. If the user has only just set up (one project, no
   data yet), give a brief, honest "here's where we are" and suggest a next step.
