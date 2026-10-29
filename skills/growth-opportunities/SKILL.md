---
name: growth-opportunities
description: Use when the user asks how to get more traffic from Google, "SEO opportunities", "quick wins", "what should I improve", "keywords close to page one", or what to do next based on Search Console. Drives the Google Search Console MCP tools (list_properties, get_growth_opportunities, get_action_center, search_analytics) end to end.
---

# Growth Opportunities (via Google Search Console MCP)

Every opportunity must come from the Google Search Console MCP tools. Never
invent a query, a position, an impression count or a suggestion.

## Tools

| Tool | Use |
|------|-----|
| `list_properties` | Lists the connected Search Console properties. **Start here.** |
| `get_growth_opportunities` | Queries sitting at positions 8–20 with real impressions — close to page one, not earning clicks yet. Scored by upside. |
| `get_action_center` | The store's insight reports (CTR opportunities, keyword drops, new keywords, indexing issues) and site health. |
| `search_analytics` | Confirm a specific query or page's numbers before recommending it. |

## Workflow

1. **Ground in reality.** Call `list_properties` first; confirm the property if
   several exist.
2. **Opportunities.** Call `get_growth_opportunities` — positions 8–20 with real
   impressions, scored by upside.
3. **Alerts.** Call `get_action_center` for Google alerts and recommended actions.
4. **Confirm.** Where a recommendation depends on specific numbers, call
   `search_analytics` for that query or page.
5. **Rank by likely impact** (high impressions with low CTR, or average position
   8–20, first) and deliver in the standard shape (see [[report-format]]).

## Rules

- **Use only numbers returned by the tools.** Never invent figures, dates or URLs.
- Always state the exact date range; GSC data has a 1–2 day lag.
- On error or empty data, say so plainly and suggest the next step.
- Lead with a short summary, then present the rankings in tables.
- This connector is read-only: present suggestions, never claim a change was
  made.
- Respect rate limits and plan limits if a tool reports them. Don't retry
  blindly; surface the limit and move on.
- If a tool call fails auth, tell the user to reconnect the server (OAuth).
  Don't guess credentials.

Used by [[report-format]] and the `/google-search-console:opportunities` command.
