---
description: Sitemap status for the connected Search Console property — submitted sitemaps, last-submitted dates and indexed page counts.
argument-hint: [date_range]
---

Report sitemap status for the connected Search Console property using the Google Search Console MCP tools.

Steps:
1. Call `whoami` to confirm the connection (platform, store, domain, scopes). If it fails, tell the user to reconnect (OAuth) — don't guess.
2. Call `list_sitemaps` for submitted sitemaps, last-submitted dates, pending status and indexed page counts.
3. Deliver in the standard report format (see [[report-format]]): one-line verdict, a table of sitemaps (URL, last submitted, status, indexed pages), then next steps — e.g. flag sitemaps that were never submitted or have pending entries.

Rules: use only tool results; never invent a sitemap URL or a date; on error or empty data say so plainly and suggest the next step.
