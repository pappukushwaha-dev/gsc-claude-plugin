---
description: SEO performance report for the connected Search Console property: totals, top queries and pages, with previous-period comparison.
argument-hint: [date_range]
---

Produce an SEO performance report for the connected Search Console property using the Google Search Console MCP tools.

Date range from the user (default: last 28 days, ending at the latest available date since GSC data lags 1-2 days): **$ARGUMENTS**

Steps:
1. Resolve the property with `list_properties`; ask if several exist and the user was not specific.
2. Call `search_analytics` for totals (clicks, impressions, CTR, average position) over the window.
3. Call `search_analytics` by query (top 10) and by page (top 10).
4. Call `compare_periods` against the previous equal-length window.
5. Deliver in the standard report format (see [[report-format]]): one-line verdict with totals and change, the exact date range, top queries and top pages as tables, then 2-3 observations drawn only from the data.

Rules: use only tool numbers; state the date range; on error or empty data say so plainly and suggest the next step.
