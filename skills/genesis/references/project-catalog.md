# Project Catalog

Per-project values genesis uses to scaffold deterministically. Fill the
project-skeleton placeholders from the matching row.

## Guardrail tiers

- STANDARD: organize/summarize/remind. No special disclaimer.
- SENSITIVE: organize, summarize, prepare, remind -- NEVER advise, file,
  prescribe, or execute. Inject the disclaimer into the master file + first reply.

## Universal (offer to everyone)

### finance  (tier: SENSITIVE)
- Domain summary: Where your money goes, subscription/anomaly audits, and compiling documents for your accountant at tax time.
- Intake: bank + credit-card statements, pay stubs, most recent tax return.
- Connectors: ~~email (optional), mostly folder-dropped.
- Master fields: account map (institutions + nicknames, NOT full numbers), recurring-charge inventory, category schema, anomaly watch-list, tax-doc compilation checklist + status.
- Disclaimer: not tax/financial advice; compiles documents, never prepares or files.

### household  (tier: STANDARD)
- Domain summary: The institutional memory of your home -- policies, manuals, warranties, maintenance, "where is the document for X".
- Intake: insurance policies, appliance manuals + serial numbers, warranties, maintenance records, vendor contacts.
- Connectors: ~~calendar (for maintenance reminders).
- Master fields: asset/appliance register (item, model, serial, purchase, warranty expiry), insurance policy map (carrier, policy #, renewal, coverage), maintenance cadence (task, interval, last, next), vendor rolodex, document index.

## Persona-curated

### retirement  (tier: SENSITIVE)
- Domain summary: Your retirement and long-term wealth picture: accounts, projections, tax-sheltering, and rebalance/RMD reminders.
- Trigger: non-students; weighted up 45+.
- Intake: 401k/IRA/pension statements, Social Security estimate, brokerage statements.
- Master fields: account map, contribution + balance history, projection assumptions, tax-sheltering checklist, rebalance/RMD reminders.
- Disclaimer: not investment advice; projects and reminds, never advises or executes trades.

### career  (tier: STANDARD)
- Domain summary: Career management end to end -- resume upkeep, certifications, job search, and the accomplishment ledger for reviews and raises.
- Trigger: employed + self-employed.
- Intake: current resume/CV, target job descriptions, certifications + expiry, performance-review notes.
- Connectors: ~~jobs (optional), ~~email.
- Master fields: resume version log, cert/CE renewal calendar, job-search pipeline (role, stage, contact, next action), brag-doc accomplishment ledger, networking follow-ups.

### education  (tier: STANDARD)
- Domain summary: Scaffolding for a student -- syllabi, deadlines, transcripts, and applications. Does not teach the subjects themselves.
- Trigger: in-school. Scaffolds the student; does NOT teach subjects.
- Intake: syllabi, transcripts, assignment list, application/scholarship deadlines, recommendation tracking.
- Connectors: ~~calendar, ~~email.
- Master fields: course + deadline register, transcript custody, application pipeline (school/scholarship, status, deadline), recommendation-letter tracker.

### caregiving  (tier: SENSITIVE)
- Domain summary: Managing another person's affairs -- appointments, medications, insurance, and contacts, held with consent.
- Trigger: caring for someone; weighted up 45-64.
- Intake (with consent): care-recipient appointments, insurance, medication list, key contacts.
- Connectors: ~~calendar, ~~email.
- Master fields: care-recipient profile, appointment + medication schedule, insurance/claim tracker, care-team contacts, document index.
- Disclaimer: not medical advice; custody + coordination only.

### transitions  (tier: SENSITIVE for estate variant, else STANDARD)
- Domain summary: A bounded life event (a move, a wedding, settling an estate) -- timeline, documents, decisions, and budget, start to finish.
- Trigger: mid life-event (move, home purchase/sale, wedding, new baby, estate/loss).
- Intake: event-specific (move: quotes, contracts, address-change list; estate: will, account inventory, contacts).
- Connectors: ~~calendar, ~~email.
- Master fields: event timeline + milestone checklist, document custody, decision log, contacts, budget tracker.
- Disclaimer: not legal or financial advice; organizes timelines, documents, and decisions, never advises, files, or executes.
- Estate note: highest liability AND emotional weight -- ship the no-legal-advice disclaimer AND a gentle, bereavement-aware tone.
