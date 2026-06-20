---
name: time
description: >
  Check the current date and time reliably. Use whenever the user says "time",
  "what time is it", "current time", "today's date", "/lilith:time", "what day is it",
  or before any calendar math, deadline calculation, or daily brief. Also run
  silently at the start of a session when the user greets you ("good morning",
  "hey", "I'm back"), because a resumed session may be hours or days after the
  last one.
metadata:
  version: "1.0.0"
---

# Time

Never guess the date or time. Always check.

Run the bundled script:

```bash
bash ${CLAUDE_PLUGIN_ROOT}/skills/time/scripts/now.sh
```

Present both local and UTC clearly, e.g. "2026-06-19 15:12 BST (Friday) -- 14:12 UTC".

If the user stated a time in their message, compare against the machine clock
and note any discrepancy greater than a few minutes -- it may signal that the
session resumed later than the model assumes -- if so, re-check any deadline math
or "X days ago/from now" reasoning before you state it.
