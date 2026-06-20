# Security Model & Limitations (read this honestly)

Lilith's discipline is real, but most of it is *prompt-enforced workflow*, not a
sandbox. Overselling a guarantee is its own kind of drift, so here is the honest
boundary of what the design does and does not promise.

## Data locality (precise version)

Your documents live in local folders on your machine. Lilith runs **no cloud of its
own**: it stores nothing remotely and never syncs or uploads your files to a Lilith or
third-party service.

Two honest caveats, stated plainly because a savvy reader will test them:

1. **The model provider.** Lilith is an LLM-backed agent. The content it *reads* is sent
   to the language-model provider you run it on, for inference, under your existing
   agreement with that provider. This is true of any AI assistant. Lilith adds no egress
   of its own on top of that model call -- that is the real differentiator, not "nothing
   ever reaches a cloud."
2. **Connectors.** Connectors you choose to add (email, calendar) move data under their
   own implementation, transport, and auth tokens, outside Lilith. A connector is a door
   you open deliberately, and it carries its own data-flow responsibility.

So: "local-first" means no service of its own siphons or stores your data -- not that
bytes never reach any cloud.

## Mount isolation is a contract, not a sandbox

The mount discipline (each daemon verifies its mounts against `mounts.json`; foreign
folders trigger STOP-and-flag) is enforced by the model following the rule on every
boot. There is no OS-level, capability, or cryptographic enforcement. A model lapse, a
context truncation, or a user mount mistake can silently violate isolation. For any
SENSITIVE project, verify the mount set yourself.

## The write tools are defense-in-depth, not a privilege boundary

`safe-write.sh` / `verify-write.sh` exist to defeat silent editor truncation and to
refuse system-temp paths. They run with whatever privileges the agent process holds;
they are not a security boundary. They keep one rolling `.bak` per file -- not an
archive. Treat them as a correctness aid, not a sandbox.

## Continuity is best-effort

The rebirth handoff (a letter the prior session leaves for the next) assumes the next
session is actually booted with `/lilith:rebirth wake`, the frontmatter parses, the
load-bearing items get prioritized, and the history still fits the context window. For
old or history-rich projects, that can degrade. Mitigations: keep each `master-*.md`
deliberately concise, run `/lilith:consolidate-memory` on a cadence, and treat continuity as
reliable-but-not-guaranteed.

## Drift prevention is reactive (today)

The anti-drift system improves when a correction recurs and someone notices. It does
not yet proactively scan corrections-logs and memory for slow-accumulating
contradictions. A proactive "drift-audit" self-check is a planned v2 addition; until
then, periodic `/lilith:consolidate-memory` and human attention are the backstop.

## Evolving a project's mounts safely

`mounts.json` is declared at project birth. When a project later needs a new mount (a
connector, shared reference data), do NOT improvise -- that bypasses the boot mount-diff.
The supported path: update `mounts.json` deliberately, with explicit confirmation, so the
allowlist change is intentional and the diff stays meaningful. (In a multi-instance
setup, route the change through the coordinator.) Until a
Prime-mediated mount-update skill exists (a v2 candidate), treat any manual
`mounts.json` edit as a high-trust action -- it widens what the boot diff will accept.

## Scaling from one project to a family (the ceremony step-up)

The low-ceremony first run (one project, one workspace) jumps to the full multi-task
mount discipline the moment you add a second domain. That step-up is real. For now,
`/lilith:tutorial` Part 4 hand-walks the first second-domain setup; a lightweight "family
mode" helper that assists the first scale-up is a v2 candidate.

## Claude-native -- the trade

Lilith runs inside the Claude desktop app. That is the point -- nothing extra to host or
babysit -- and it is also the dependence: you are betting on one provider's platform,
pricing, availability, and roadmap. A real trade, stated plainly: less to run, more
reliance on one company. Choose it with eyes open.

---

*The point of this page is trust through honesty: a reader who catches an oversold claim
loses trust in the whole repo. So the claims here are deliberately the modest, true ones.*
