---
name: seo-performance-report
description: Use when the user asks for a Search Console performance report, "how is my site doing in Google", "SEO report", "top queries", "top pages", "clicks and impressions", or wants to compare this period with a previous one. Drives the Google Search Console MCP tools (list_properties, search_analytics, compare_periods) end to end.
---

# SEO Performance Report (via Google Search Console MCP)

All numbers come from the Google Search Console MCP tools. Never invent
figures, dates or URLs. If the tools aren't reachable, tell the user to
connect the server (OAuth) or check their Orgalytics registration; don't guess.

## Tools

| Tool | Use |
|------|-----|
| `list_properties` | Lists all Search Console properties the connected Google account can access, with permission levels. **Start here.** |
| `search_analytics` | Totals and top rows grouped by query or page over a date window, with clicks, impressions, CTR and average position. |
| `compare_periods` | Compares a date window against the previous window of the same length: totals with change, plus the queries/pages responsible for most of the difference. |

## Workflow

1. **Ground in reality.** Call `list_properties` first. If several properties
   exist and the user didn't say which, ask before pulling data.
2. **Pick the window.** Default: last 28 days. GSC data lags 1–2 days — end at
   the latest available date and say so if the user asked for "today".
3. **Totals.** Call `search_analytics` for clicks, impressions, CTR and average
   position over the window.
4. **Breakdowns.** Call `search_analytics` by query (top 10) and by page
   (top 10).
5. **Comparison.** Call `compare_periods` for the previous equal-length window.
6. Deliver the report in the standard shape (see [[report-format]]).

## Rules

- **Use only numbers returned by the tools.** Never invent figures, dates or URLs.
- Always state the exact date range; GSC data has a 1–2 day lag, so "today" is
  never in the data — show the latest available date instead.
- On error or empty data, say so plainly and suggest the next step.
- Lead with a short summary, then present rankings in tables.
- Respect rate limits and plan limits if a tool reports them. Don't retry
  blindly; surface the limit and move on.

Used by [[report-format]] and the `/google-search-console:report` command.
