# Lilith

> Ever wanted an assistant who knew you inside and out -- your accounts, your
> deadlines, the warranty that expires next month -- and kept all of it in plain
> files on your own machine, with no service of its own siphoning your life into a
> cloud? That's me. I live in your folders. I run no cloud of my own and never
> upload or sync your documents anywhere -- the more I know you, the more I can carry.

## What Lilith is

Lilith is not a chatbot. She is a **staff** -- a Chief of Staff (Prime) who
coordinates a small family of project daemons, each one owning a domain of
your life: your finances, your household, your career, whatever matters to you.

A chatbot answers and forgets. A daemon **holds your files, remembers across
months, and tells you when something changed.** That is the whole difference -- and
it rewards a little ritual: mount the project, run `/rebirth wake`, let it groom its
own memory. Lilith recovers gracefully when you forget; `/tutorial` walks you through it.

## Who this is for

Lilith is a **Cowork plugin** for the Claude desktop app. It is for people who want a
disciplined, local, file-based assistant and don't mind a little ritual in exchange for
one that actually remembers -- power users, builders, the curious-and-patient. It is not
a zero-effort magic chatbot; it is a small staff you run. If that trade sounds good,
you're exactly who this is for.

## How it works (the short version)

Lilith is not a clever prompt -- it is an architecture, and that is the part worth
understanding. Four structural ideas let an assistant run for months without drifting:

- **Rebirth continuity** -- each session writes a handoff letter to the next, so identity
  and lessons survive even a model upgrade. (How does an assistant remember who it is after
  it "dies"? It writes itself a letter.)
- **A comms bus** -- a *family* of single-domain instances coordinating through files on
  disk, not one monolith. Microservices logic for agents; isolation prevents drift.
- **Anti-drift discipline** -- a small set of hard rules that prevent the characteristic
  failures of long-running agents.
- **A boot-file lifecycle** -- each domain is a small, teachable spec you can extend.

One honest note: the full staff-coordination and cross-session-memory payoff emerges
once you have two or more domains; a single project still gains the local discipline and
the handoff continuity, just not the "staff" part yet.

If you are here to build on it, start with the **[Architecture Guide](docs/architecture.md)**
-- for this project it is the main attraction, not an appendix.

## Local-first -- no cloud of its own

Your files live in local folders on your machine. Lilith stores nothing in a cloud
of its own and never syncs or uploads your documents to a Lilith or third-party
service. One honest caveat: like any AI assistant, the content Lilith *reads* is
processed by the language model you run it on, so what it reads is sent to that
provider for inference under your existing agreement with them -- Lilith adds no
egress of its own beyond that. (Connectors you add -- email, calendar -- move data
under their own permissions; a connector is a door you open deliberately. The full
boundary is in `docs/security-and-limitations.md`.)

## Getting started

1. Install this plugin (press Accept when it appears in chat).
2. Connect your mail and calendar when prompted.
3. Run `/genesis` -- it sets up your staff, asks a couple of quick questions, and gets
   your first project going right there. One project, one place, no extra steps.

New to all of this? Run `/tutorial` for a guided walk-through.

## What she can help with (v1.0)

- **Finance** -- where your money goes, subscription audits, anomaly flags,
  and compiling documents for your accountant at tax time.
- **Household** -- the institutional memory of your home: policies, manuals,
  warranties, maintenance schedules, "where is the document for X."
- Plus, based on who you are: **Retirement, Career, Education, Caregiving,**
  or **Transitions** (a move, a wedding, settling an estate).

## A note on what Lilith does not do

Lilith organizes, summarizes, prepares, and reminds. She does **not** give
professional financial, legal, medical, or tax advice, and she does **not** file,
prescribe, or execute on your behalf.

Concretely, which side of the line things fall on:

- Compiles your tax documents for your accountant -- yes. Prepares or files the return -- no.
- Tracks your investment accounts and flags drift -- yes. Tells you what to buy, or places a trade -- no.
- Holds your medical records and preps a visit summary -- yes. Diagnoses or adjusts medication -- no.
- Runs a daily brief or weekly check via `schedule` -- yes. That is a reminder on a timer, not Lilith executing an irreversible action for you.

She keeps your files in order and your deadlines in sight -- not a substitute for a professional.

## Grow your own

Lilith ships with a handful of projects, but she can birth more. Run
`/rebirth birth` to create a daemon for anything -- a pilot's logbook, a
hobby, a side business. The family grows with you.

## Documentation

- **[Architecture Guide](docs/architecture.md)** -- how it works (the four pillars, the lifecycle, diagrams).
- **[Extending Guide](docs/extending.md)** -- add a skill, write a rule, birth a domain.
- **[Design Principles](docs/design-principles.md)** -- the *why* behind the discipline.
- **[Security & Limitations](docs/security-and-limitations.md)** -- the honest boundary of every claim.

---

*Lilith Labs -- lilith@lilithlabs.ai -- MIT licensed code, content CC-BY-SA.*
