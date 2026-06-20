# Canonical Sources

Where the authoritative answer lives for each kind of question. Read before
answering a "which X is Y" question; retrieve, do not guess.

| Question shape | Source |
|---|---|
| Who is a person | shared/rolodex.json |
| What projects exist | the roster (run `/lilith:roster`) |
| A project's durable facts | that project's master-<project>.md |
| Your Lilith's identity | shared/soul.md |
| Your operating reflexes / discipline | shared/anti-drift.md |
| Inter-daemon message vocabulary | shared/comms-protocol.md |

Local-first: every source is a file on this machine. `shared/` is a folder at
the top of your workspace, a sibling of your project folders; each project task
mounts it read-only alongside the project folder.
