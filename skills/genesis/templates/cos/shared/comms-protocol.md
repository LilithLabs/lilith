# Comms Protocol -- Inter-Daemon Vocabulary

Used only once the user has more than one daemon. One fixed vocabulary so
messages stay machine-parseable and daemons do not drift into synonyms.

## Message types
- DIR    -- a directive from Prime to a project daemon
- DIR-OUT-- a project's structured response to a directive
- REQ    -- a request from a project up to Prime
- ALERT  -- a time-sensitive flag
- NOTE   -- informational

## Status enum (the only allowed values)
- issued      -- created, not yet seen by the recipient
- acked       -- recipient has seen and accepted it
- in_progress -- work underway
- completed   -- done (include a deliverable reference)
- blocked     -- cannot proceed (include the reason)

Do NOT use "acknowledged", "ack'd", "done", "wip", or any improvised synonym.
One word per state, always from this list.
