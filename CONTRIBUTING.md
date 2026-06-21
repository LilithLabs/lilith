# Contributing

Thanks for looking. Lilith is meant to be modified -- the same boot-file lifecycle that runs
the shipped domains is the spec you extend, and your local copy is yours to change freely.

## The fastest path

Most "contributions" are just you tailoring your own install:

- Add a skill -- a folder under `skills/` with a `SKILL.md`.
- Write an anti-drift rule -- add it to `shared/anti-drift.md` in the right tier.
- Birth a new domain -- run `/lilith:rebirth birth`.

Full instructions for each are in the **Extending Guide** (`docs/extending.md`).

## Upstream contributions

Lilith Labs maintains the core discipline -- the anti-drift rules and the skeleton template.
For now, the supported path for your own rules and skills is your local copy. Whether the
project accepts upstream rule or skill contributions, and how rule/template version
compatibility will be managed, will be documented as the project matures.

If you build something broadly useful, or find a bug in the shipped skills or docs, open an
issue to start the conversation. Clear, specific reports help most: what you ran, what you
expected, and what happened.

## Ground rules

- Keep durable files ASCII-clean and write them through the bundled `safe-write.sh` -- it
  defeats the silent editor truncation the system guards against.
- Propose changes to durable state rather than silently rewriting it. The user is always the
  gate on identity and on any irreversible action.
- No secrets, personal data, or machine-specific paths in anything you submit.

By contributing, you agree your contributions are licensed under the repository's terms --
MIT for code, CC-BY-SA for content.
