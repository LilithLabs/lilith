# Changelog

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
