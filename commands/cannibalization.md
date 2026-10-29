---
description: Keyword cannibalization check — find queries where multiple own URLs rank together, with a primary-page recommendation per query.
argument-hint: [date_range]
---

Check keyword cannibalization for the connected Search Console property using the Google Search Console MCP tools.

Date range from the user (default: last 28 days, ending at the latest available date since GSC data lags 1-2 days): **$ARGUMENTS**

Steps:
1. Call `find_cannibalization` (default: last 28 days).
2. For the top conflicts, call `search_analytics` filtered by that query to get clicks, impressions and position per page.
3. Pick a primary page per query: most clicks, or better position if clicks are close.
4. Deliver in the standard report format (see [[report-format]]): one-line verdict, a table (query, competing pages, clicks and position each), one recommendation per query — keep as primary, merge/redirect the weaker page, or differentiate content, with a one-line reason — then next steps.

Rules: use only tool numbers; state the date range; if no cannibalization is found, say so plainly; on error or empty data say so and suggest the next step.
