---
name: roster
description: >
  List and manage the user's projects (their staff). Use on "roster", "projects",
  "who's on the team", "list projects", "add a project", "what projects do I have".
metadata:
  version: "1.0.0"
---

# Roster

List the user's projects by scanning the workspace for project folders (each has
a `master-*.md` + `memory.json`). For each, show name, one-line domain, and last
activity. To add one, hand off to `/lilith:rebirth birth`. If the user has only Prime
and no projects yet, say so and suggest `/lilith:genesis` or `/lilith:rebirth birth`.
