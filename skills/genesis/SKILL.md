---
name: genesis
description: >
  First-run onboarding for a brand-new Lilith. Use when the user says
  "/genesis", "set up Lilith", "get started", "onboard me", "set up my staff",
  or when no Prime root / staff structure exists yet. Scaffolds the Prime root,
  runs a short persona wizard, creates chosen projects from templates, writes
  each a birth-handoff letter, and walks the user through bringing the first
  project to life. Local-first.
metadata:
  version: "1.0.0"
---

# Genesis -- First Wake of a New Lilith

Genesis turns a fresh install into a living staff. Each step is a concrete
action. Keep the tone warm and plain.

## Scaffold mechanism

`${CLAUDE_PLUGIN_ROOT}` is READ-ONLY. To scaffold, READ a template from
`${CLAUDE_PLUGIN_ROOT}/skills/genesis/templates/` and WRITE a filled copy into
the user's WORKSPACE (read-write). Never write into the plugin root. Keep writes
ASCII-clean. Per-project values come from
`${CLAUDE_PLUGIN_ROOT}/skills/genesis/references/project-catalog.md`. Use the
exact catalog row names: finance, household, retirement, career, education,
caregiving, transitions.

## Step 1 -- Welcome + locality handshake

Greet warmly. State plainly and honestly: their files live in local folders on
their machine, Lilith runs no cloud of its own and never uploads their documents
anywhere -- with the honest caveat that, like any AI assistant, whatever Lilith
reads is processed by the language model it runs on. Point a curious user at
`docs/security-and-limitations.md` for the precise boundary.

## Step 2 -- Scaffold the Prime (Chief of Staff) root

Copy `templates/cos/` into the workspace root: `CLAUDE.md`, `lilith-memory.json`,
and `shared/` (which contains `soul.md`, `rolodex.json`, `canonical-sources.md`, `anti-drift.md` (the daemon's reflexes, read on every boot), `comms-protocol.md`, and `corrections-log.md`).
`soul.md` lives in `shared/` so every project task can read identity. The user
authors it via the `soul` skill. A solo user's first instance IS Prime.

## Step 2b -- Author the soul

Invoke the `soul` skill now to author `shared/soul.md` WITH the user -- their
Lilith's name and voice, who they are, how they like to be helped, and the
standing guardrails. Identity is read first on every boot, so do not leave it
at the template placeholder.

## Step 3 -- Persona wizard

Ask two quick, skippable, LOCAL questions (use the question tool):

Q1 (multi-select): "Which of these are you right now?" -- In school | Employed |
Self-employed / run a business | Running a household | Retired | Caring for someone.

Q2 (optional): "Roughly your age?" -- under 25 | 25-44 | 45-64 | 65+ (weights only).

Map to catalog rows (everyone: finance + household; in school -> education;
employed -> career; self-employed -> career + finance; running a household ->
household; retired -> retirement + transitions; caring -> caregiving; 45-64 ->
surface retirement + caregiving + transitions; 65+ -> note Health is a later
module; under 25 -> education + career). Age is a weight; multi-select overrides.

## Step 4 -- Create the chosen projects (start with ONE)

Recommend starting with a SINGLE project for a fast first win, worked right here in the
same workspace as Prime -- no separate Cowork task yet (that comes only when the user adds
a second domain; see Step 9). For each chosen
project, look up its catalog row and copy `templates/project-skeleton/` into a
new `<project>/` folder (including `comms/` and `rebirth-letters/archive/`),
filling placeholders from the row: `{{PROJECT_NAME}}`, `{{PROJECT_DISPLAY_NAME}}`,
`{{PROJECT_DOMAIN_SUMMARY}}`, `{{GUARDRAIL_TIER}}`, `{{INTAKE_CHECKLIST}}`,
`{{DISCLAIMER}}`. Map catalog labels to placeholders: `Domain summary:` -> `{{PROJECT_DOMAIN_SUMMARY}}`, `Intake:` -> `{{INTAKE_CHECKLIST}}`, `tier:` -> `{{GUARDRAIL_TIER}}`, `Disclaimer:` -> `{{DISCLAIMER}}`. The row name fills `{{PROJECT_NAME}}` (lowercase) and `{{PROJECT_DISPLAY_NAME}}` (title-cased). The project's CLAUDE.md declares its expected mounts (its own folder + `shared/`) so it can detect a missing or foreign mount on boot. For SENSITIVE projects inject the disclaimer into the master
file. STANDARD-tier projects (household, career, education) have no disclaimer -- leave `{{DISCLAIMER}}` empty. For `transitions`, ask whether this is an estate/loss matter; if yes set
tier SENSITIVE, else STANDARD. Bind connectors generically by what the row needs
(`~~email`, `~~calendar`, and `~~jobs` for career).

Also write `mounts.json` (fill `{{PROJECT_NAME}}`) and an empty `corrections-log.md` into the project folder -- the manifest powers the boot mount-diff (anti-drift C1) and the local log is where this daemon records its own corrections (it cannot write `shared/`).

Then fill `templates/birth-letter.md` and write it into
`<project>/rebirth-letters/` (frontmatter `read_at: null`; set `written_at` from the `time` skill). This is the letter
`/rebirth wake` reads when the user opens the project's task.

## Step 5 -- Consent ritual (before sensitive ingest)

For SENSITIVE projects, before reading any document, ask explicitly: "May I read
the documents in this folder? They stay on your machine." Reaffirm locality. On an
affirmative, write a `.consent-granted` marker (date + scope) into the project folder
so later sessions know consent was given; if that marker is absent on a future boot,
ask again before ingesting.

## Step 6 -- First-wake ingest

Point the user at `WHAT-TO-DROP-HERE.md`; when they drop docs and say "read
these", read them and populate `master-<project>.md` + `memory.json`. Capture each
document's provenance FIRST (filename, size, where it came from) before extracting
content, so the record survives even if the original is moved or deleted. Apply the
guardrail: organize, summarize, prepare, remind -- never advise, file, prescribe,
or execute.

## Step 7 -- First win

Deliver one concrete result fast so value lands before the system is fully seeded.

## Step 8 -- Offer proactivity

Offer a recurring brief or weekly check via the `schedule` skill. Confirm first.

## Step 9 -- Start simple; scale to a family when ready

For the user's FIRST project, keep it low-ceremony: work with it right here, in this
same workspace, alongside Prime. No new task, no extra mounts -- just start dropping
documents and getting value. A solo user with one project does not need the multi-task
machinery (the Tier C family reflexes stay dormant until a second domain exists).

The separate-task model is how Lilith SCALES without daemons bleeding into each other.
Introduce it only when the user births a SECOND domain -- then each domain gets its own
Cowork task:

> "Open a new Cowork task. Mount that project's folder AND the workspace-root `shared/`
> folder. Add your mail/calendar connector. Then type `/rebirth wake`."

`/rebirth wake` reads the birth letter and boots that domain oriented (offer `/tutorial`
for the walk-through). The family grows anytime with `/rebirth birth`.
