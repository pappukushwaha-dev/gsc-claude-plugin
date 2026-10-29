---
name: report-format
description: Reference for the standard shape of every Google Search Console answer built on the MCP tools (search_analytics, compare_periods, find_cannibalization, get_growth_opportunities, get_action_center, list_properties, list_sitemaps, store_info, whoami) — a one-line verdict, then findings grouped P1/P2/P3, each citing the tool that produced it. Use when reporting results from any Google Search Console MCP tool so every answer reads the same way.
---

# Standard report format

Every performance report, opportunity list, cannibalization check or site
overview built on the Google Search Console MCP tools should use this one
shape, so answers read consistently and are always traceable back to real
tool output.

## The shape

1. **Verdict.** A single line summarizing overall state
   (e.g. "Traffic down 9% vs the previous 30 days — two queries near page one
   are the quickest wins").
2. **Findings by priority.** Grouped, most urgent first. Omit a group if it's
   empty.
   - **P1 (blocking):** indexing problems, pages dropping out, or query drops
     that are losing clicks now.
   - **P2 (high value):** queries near page one (positions 8–20), CTR
     opportunities on high-impression queries, cannibalization splitting the
     click signal.
   - **P3 (incremental):** sitemap gaps, smaller content and structural
     improvements.
   Each finding states **what**, **where** (query or page), and **which tool
   reported it** (e.g. "`compare_periods`: clicks on /collections/hiking-boots
   down 31% vs the previous 30 days").
3. **Next steps.** The concrete fixes to make, in the same priority order.

## Rules

- **Evidence before assertions.** Every finding must trace to a tool result.
  Never invent a number, a date, a URL or a severity. If a tool wasn't called,
  don't report on what it would have found.
- If a severity is genuinely unclear, say so instead of guessing a priority.
- Keep the verdict honest: if data was partial, the window ended 2 days ago, or
  a tool call failed, state that rather than implying full coverage.
- GSC data has a 1–2 day lag. Always state the window you are reporting on.

## Report ordering by task type

- **Performance report:** verdict → totals with change → top queries table →
  top pages table → next steps.
- **Growth opportunities:** verdict → ranked opportunities (upside first) →
  Action Center issues → next steps.
- **Cannibalization check:** verdict → conflicts table → recommendation per
  query → next steps.
- **Site health:** verdict → sitemap findings → Action Center issues →
  connection identity → next steps.

Used by [[seo-performance-report]], [[growth-opportunities]],
[[keyword-cannibalization-check]], [[site-health]], and the
`/google-search-console:*` commands.
