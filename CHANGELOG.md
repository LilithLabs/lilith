# Changelog

## 1.1.3 -- 2026-11-25

A fix release from a fresh-user test run of `/lilith:genesis`.

- **Solo start no longer trips the mount check.** The recommended first-project layout (one project worked from the workspace root) contradicted the project template's mount rule. Project files, `mounts.json` and Prime's contract now agree: the mount check applies when a project runs in its own task, and is dormant when the workspace root (Prime's seat) is mounted. Each file says where `shared/` and letters live, and when to graduate to one task per project.
- One boot order everywhere (matches `docs/architecture.md`): clock, reflexes, soul, unread letter, contract, master, memory, comms.
- Genesis now lists every placeholder it must fill (including `{{TIMESTAMP}}`), says to rename `master-PROJECT.md`, names the birth-letter file, and checks for leftover `{{`.
- The never-advise guardrail reads as universal in project files and birth letters (it always was); SENSITIVE adds consent and a disclaimer.
- Template `.gitkeep` files are empty, so they no longer show up in comms or letter scans.

## 1.1.2 -- 2026-11-25

- Docs: add `docs/how-it-works.md`, a public map of the reference deployment (staff, memory layers, directive lifecycle, tools, boot testing, evolution) with Mermaid diagrams. Linked from the README.

## 1.1.1 -- 2026-10

A cleanup release. No change to how Lilith behaves.

- **Install instructions now cover the Claude desktop app (Cowork)**, the primary platform.
  The previous one-line install used terminal commands that the desktop app does not
  accept; those remain documented for Claude Code.
- **LICENSE restored to the standard MIT text.** The product disclaimer moved to
  `DISCLAIMER.md`. The stray CC-BY-SA reference is gone; everything here is MIT.
- `CONNECTORS.md` now describes connectors accurately: optional, connected through the app,
  checked at run time -- nothing is bound at install.
- The rebirth skill's wake sequence now matches the boot order in `docs/architecture.md`.
- Added this changelog and `SECURITY.md`; removed stale version stamps from the docs.

## 1.1.0 -- 2026-06-21

- An opinionated default soul (prime directives, voice, guardrails) instead of a blank
  template, including an "On waking" mount check.
- The architecture guide explains the soul as the identity anchor, its two load channels,
  and adds a Limitations and Trade-offs section.
- README clarifications and a new `CONTRIBUTING.md`.
- Fixed the marketplace plugin source path.

## 1.0.0 -- 2026-06-20

- First public release.
