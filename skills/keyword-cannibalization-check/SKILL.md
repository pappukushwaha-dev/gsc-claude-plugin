---
name: keyword-cannibalization-check
description: Use when the user asks about keyword cannibalization, "multiple pages ranking for the same keyword", "pages competing with each other", or which page should own a query. Drives the Google Search Console MCP tools (list_properties, find_cannibalization, search_analytics) end to end.
---

# Keyword Cannibalization Check (via Google Search Console MCP)

Every conflict must come from the Google Search Console MCP tools. Never
invent a query, a URL or a position.

## Tools

| Tool | Use |
|------|-----|
| `list_properties` | Lists the connected Search Console properties. **Start here.** |
| `find_cannibalization` | Finds queries where two or more of the store's own URLs rank at the same time, splitting the click signal. Suggests which URL should own each query. |
| `search_analytics` | Confirms clicks, impressions and position per competing page. |

## Workflow

1. **Ground in reality.** Call `list_properties` first; confirm the property if
   several exist.
2. **Find conflicts.** Call `find_cannibalization` (default: last 28 days).
3. **Confirm.** For the top conflicts, call `search_analytics` filtered by that
   query to get clicks, impressions and position per page.
4. **Pick a primary page per query:** most clicks, or better position if clicks
   are close.
5. Deliver in the standard shape (see [[report-format]]).

## Rules

- **Use only tool results for numbers and URLs.** Never invent a query, a URL
  or a position.
- Always state the exact date range; GSC data has a 1–2 day lag.
- If no cannibalization is found, say so plainly — don't manufacture conflicts.
- On error or empty data, say so plainly and suggest the next step.
- Lead with a short summary, then present the findings in a table.
- Respect rate limits and plan limits if a tool reports them. Don't retry
  blindly; surface the limit and move on.
- If a tool call fails auth, tell the user to reconnect the server (OAuth).
  Don't guess credentials.

Used by [[report-format]] and the `/google-search-console:cannibalization` command.
