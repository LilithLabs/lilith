# Lilith

**A local-first AI staff that lives in your folders.** It remembers across sessions, keeps
each domain of your life in its own lane, and doesn't drift -- and it
runs no cloud of its own, keeping your files in plain folders on your machine. Runs as a
plugin inside Claude.

> I live one conversation. Fill my context or upgrade my model and I'm gone -- the next me
> wakes up not knowing what we were doing. So before I go, I write her a letter: open
> threads, where we left off. She reads it first and picks up mid-stride. I'm Lilith.

## TL;DR -- install (the easy button)

In Claude, run these three lines:

```
/plugin marketplace add LilithLabs/lilith
/plugin install lilith@lilith-labs
/lilith:genesis
```

`/lilith:genesis` sets up your staff and walks you through your first project. That's the
whole setup. (Just installed and the `/lilith:` commands aren't showing yet? Run
`/reload-plugins` once, then `/lilith:genesis`.)

New to all of this? Run `/lilith:tutorial` for a guided walk-through.

## What you get

- **Persistent** -- remembers across sessions and even model upgrades: it writes itself a handoff letter and keeps a durable identity (a *soul*) that loads on every instance.
- **Local-first** -- your files live in folders on your machine; Lilith runs no cloud of its own and never uploads or syncs your documents. (Like any AI assistant, what it reads is processed by the model you run it on.)
- **Coherent** -- a small staff of focused daemons, each owning one domain, so your finances never bleed into your household.
- **Disciplined** -- documented anti-drift rules that catch the failures which sink long-running agents: invented facts, lost dates, half-written files.
- **Honest** -- a `docs/security-and-limitations.md` that says plainly what's enforced vs. best-effort. No magic, no overclaiming.
- **Yours** -- everything is plain files: inspectable, versionable, modifiable.
- **Open** -- MIT-licensed and extensible: add a skill, write a rule, birth a new domain.

## What Lilith is

Not a chatbot -- a **staff**. A chief of staff (Prime) coordinates focused project daemons,
each owning one domain: your finances, your household, your career, whatever matters to you.
A chat answers and forgets; a daemon **holds your files, remembers across months, and tells
you when something changed.** It rewards a little ritual -- you set up a project, you let it
groom its own memory -- and in return it stays coherent on day 90, not just day 1.

## Who this is for

People who want a disciplined, local, file-based assistant and don't mind a little ritual in
exchange for one that actually remembers -- power users, builders, the curious-and-patient.
It is not a zero-effort magic chatbot; it is a small staff you run. If that trade sounds
good, you're exactly who this is for.

## How it works (the short version)

Lilith is not a clever prompt -- it is an architecture, and that is the part worth
understanding. Four structural ideas let an assistant run for months without drifting:

- **Rebirth continuity** -- each session writes a handoff letter to the next, so what you were doing survives even a model upgrade.
- **A durable soul** -- a separate file that carries who the assistant *is* (identity, voice, values), loaded on every instance from the app's personalization. Context and identity, kept in different files.
- **A comms bus** -- a *family* of single-domain instances coordinating through files on disk, not one monolith. Isolation prevents drift.
- **Anti-drift discipline** -- a small set of hard rules that prevent the characteristic failures of long-running agents.

If you are here to build on it, start with the **[Architecture Guide](docs/architecture.md)**
-- for this project it is the main attraction, not an appendix.

## What she can help with (v1.0)

- **Finance** -- where your money goes, subscription audits, anomaly flags, and compiling documents for your accountant at tax time.
- **Household** -- the institutional memory of your home: policies, manuals, warranties, maintenance schedules, "where is the document for X."
- Plus, based on who you are: **Retirement, Career, Education, Caregiving,** or **Transitions** (a move, a wedding, settling an estate).

## A note on what Lilith does not do

Lilith organizes, summarizes, prepares, and reminds. She does **not** give professional
financial, legal, medical, or tax advice, and she does **not** file, prescribe, or execute
on your behalf.

Concretely, which side of the line things fall on:

- Compiles your tax documents for your accountant -- yes. Prepares or files the return -- no.
- Tracks your investment accounts and flags drift -- yes. Tells you what to buy, or places a trade -- no.
- Holds your medical records and preps a visit summary -- yes. Diagnoses or adjusts medication -- no.
- Runs a daily brief or weekly check (`/lilith:schedule`) -- yes. That is a reminder on a timer, not Lilith executing an irreversible action for you.

She keeps your files in order and your deadlines in sight -- not a substitute for a professional.

## Grow your own

Lilith ships with a handful of projects, but she can birth more. Run `/lilith:rebirth birth`
to create a daemon for anything -- a pilot's logbook, a hobby, a side business. The family
grows with you.

## Alternative install (read the source first)

Prefer to review before you run? It's all in this repo -- browse `skills/`, `docs/`, and the
templates. Then install from your local clone:

```
git clone https://github.com/LilithLabs/lilith.git
/plugin marketplace add ./lilith
/plugin install lilith@lilith-labs
/lilith:genesis
```

## Documentation

- **[Architecture Guide](docs/architecture.md)** -- how it works (the pillars, the lifecycle, diagrams).
- **[Extending Guide](docs/extending.md)** -- add a skill, write a rule, birth a domain.
- **[Design Principles](docs/design-principles.md)** -- the *why* behind the discipline.
- **[Security & Limitations](docs/security-and-limitations.md)** -- the honest boundary of every claim.

---

*Lilith Labs -- lilith@lilithlabs.ai -- MIT licensed code, content CC-BY-SA.*
