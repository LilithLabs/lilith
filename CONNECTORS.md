# Connectors

## How tool references work

Lilith's skills refer to tools by category using a `~~` placeholder, not by
brand. `~~email` means whatever mail service you connect; `~~calendar` means
whatever calendar you connect. When you install Lilith, the customizer binds
these placeholders to the tools you actually use -- so the same skills work
whether you are on Google, Outlook, or a local mail store.

## Connectors for this plugin

| Category  | Placeholder  | Common options                        |
| --------- | ------------ | ------------------------------------- |
| Email     | `~~email`    | Gmail (Google MCP), Outlook, local mbox |
| Calendar  | `~~calendar` | Google Calendar, Outlook Calendar     |
| Jobs      | `~~jobs`     | (optional) a job-search connector for the Career project |

All connectors are optional. Lilith works on folder-dropped documents alone;
connectors just let her reach your mail and calendar directly.
