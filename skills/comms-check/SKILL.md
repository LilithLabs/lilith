---
name: comms-check
description: >
  Scan for messages and items moving between the user's daemons. Use on
  "comms-check", "any new messages", "what's new", "inbox", "check comms".
  Degrades cleanly when the user has no projects or no comms yet.
metadata:
  version: "1.0.0"
---

# Comms Check

1. Find every `comms/` folder across the user's projects.
2. Report any unhandled items (notes, requests, alerts) grouped by project.
3. If there are no projects yet, or all `comms/` folders are empty, say plainly
   "No items -- nothing waiting between your daemons" rather than erroring. For a
   solo user this is the normal, expected state.
