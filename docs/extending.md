# Extending Guide

> Lilith is meant to be modified. The same boot-file lifecycle that runs the shipped
> domains is the spec you extend. Four common tasks. Version 0.1, 2026-06-20.

## Add a skill

A skill is a folder under `skills/` with a `SKILL.md`: YAML frontmatter (a `name` and a
`description` written in the third person with the trigger phrases a user would say),
then an imperative body that instructs the assistant what to do. Keep the body under a
few thousand words; put detail in a `references/` subfolder and bundle any helper script
under `scripts/`, referenced with `${CLAUDE_PLUGIN_ROOT}` so paths stay portable.

```
skills/your-skill/
  SKILL.md            # frontmatter + imperative instructions
  references/         # optional: detail loaded on demand
  scripts/            # optional: helper scripts (use ${CLAUDE_PLUGIN_ROOT})
```

Good descriptions are specific about *when* to fire ("use when the user says X, Y, or
Z"); vague ones mis-trigger.

## Write an anti-drift rule

Anti-drift rules live in one shared file (`shared/anti-drift.md`), read by every instance
on boot. To add one: state the **trigger** (the condition that fires it), the **reflex**
(what to do), and put it in the right tier -- A for platform/model reflexes, B for
epistemic, C for multi-instance. Keep the rule abstract enough to survive a rename, and
state the rationale elsewhere (a decision log or `design-principles.md`), not in the rule
itself -- the rule file states the *method*, not its history. A rule the system cannot
actually enforce is a documentation line, not a guarantee; label it honestly.

## Birth a new domain

Run `/lilith:rebirth birth`. It copies the `project-skeleton/` template into a new folder, fills
the placeholders (name, display name, domain summary, guardrail tier), writes a
birth-handoff letter so the new instance wakes oriented, and registers the domain. Then
open a new task, mount that folder plus `shared/`, and run `/lilith:rebirth wake`. The skeleton
is the contract: a `CLAUDE.md`, a `master-*.md`, a `memory.json`, a `mounts.json`
(its expected-mount allowlist), and the `comms/` and `rebirth-letters/` folders.

For a SENSITIVE domain (one that holds financial, medical, or legal documents), set the
guardrail tier accordingly so the disclaimer and the consent ritual apply.

## Customize the boot files

Each domain's behavior is shaped by its boot files, and you can edit them directly:

- `CLAUDE.md` -- the domain's contract: its scope, its boot read-order, its guardrail tier.
- `master-<domain>.md` -- durable bedrock facts (kept deliberately concise).
- `mounts.json` -- the expected-mount allowlist the boot mount-diff checks against. When a
  domain genuinely needs a new mount, update this deliberately and with confirmation -- do
  not improvise a mount that bypasses the check.
- `shared/soul.md` -- the assistant's identity, authored with the `/lilith:soul` skill.

The discipline that keeps edits safe is the same one the system uses on itself: write
durable files through the bundled `safe-write.sh` (it defeats silent editor truncation),
and propose changes to durable state rather than silently rewriting them.

## Contributing rules and skills

Lilith Labs maintains the core discipline (the anti-drift rules and the skeleton
template). For v1.0, the supported path for your own rules and skills is to add them to
your local copy -- the framework is yours to modify. Whether the project accepts upstream
rule/skill contributions, and how rule/template version compatibility will be managed,
will be documented as the project matures; watch the repo. If you build something broadly
useful, open an issue to start that conversation.

## Where to go next

- **Architecture Guide** -- how the pieces fit: `architecture.md`.
- **Design Principles** -- the judgment behind the rules: `design-principles.md`.
- **Security & Limitations** -- what the design does and does not promise: `security-and-limitations.md`.
