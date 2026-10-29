---
description: Growth opportunities from Search Console — queries near page one, CTR wins and recommended actions, ranked by impact.
argument-hint: [date_range]
---

Find growth opportunities for the connected Search Console property using the Google Search Console MCP tools.

Date range from the user (default: last 28 days, ending at the latest available date since GSC data lags 1-2 days): **$ARGUMENTS**

Steps:
1. Resolve the property with `list_properties`; ask if several exist and the user was not specific.
2. Call `get_growth_opportunities` (queries at positions 8-20 with real impressions, scored by upside).
3. Call `get_action_center` for Google alerts and recommended actions.
4. Where a recommendation depends on specific numbers, call `search_analytics` for that query or page.
5. Rank by likely impact (high impressions with low CTR, or average position 8-20, first).
6. Deliver in the standard report format (see [[report-format]]): one-line verdict, ranked list of 5-8 opportunities (query or page, supporting numbers, one concrete suggested action), a separate short list of Action Center issues, then next steps.

Rules: use only tool numbers; state the date range; on error or empty data say so plainly and suggest the next step; this connector is read-only — present suggestions, never claim a change was made.
