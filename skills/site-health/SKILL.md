---
name: site-health
description: Use when the user asks about their site's overall Search Console health, "is my site connected", "sitemap status", "store info", "connection check", or wants an overview of their GSC setup rather than performance numbers. Drives the Google Search Console MCP tools (list_properties, list_sitemaps, store_info, whoami) end to end.
---

# Site Health (via Google Search Console MCP)

Everything here comes from the Google Search Console MCP tools. Never invent
a domain, a sitemap URL or a connection status.

## Tools

| Tool | Use |
|------|-----|
| `whoami` | Tenant identity: platform, store, domain, scopes. **Start here** to confirm the connection. |
| `store_info` | The store's GSC setup: store name, connected domains, plan tier, Google connection/token status. |
| `list_properties` | All Search Console properties the connected Google account can access, with permission levels. |
| `list_sitemaps` | Sitemaps submitted for the property, with last-submitted dates, pending status and indexed page counts. |

## Workflow

1. **Confirm the connection.** Call `whoami` — platform, store, domain and
   scopes. If it fails, tell the user to reconnect (OAuth) instead of guessing.
2. **Store setup.** Call `store_info` for the store's GSC configuration.
3. **Properties.** Call `list_properties` so the user can confirm the right
   property is connected.
4. **Sitemaps.** Call `list_sitemaps` for submission dates and indexed counts.
5. Deliver in the standard shape (see [[report-format]]).

## Rules

- **Use only tool results.** Never invent a domain, a sitemap URL or a status.
- Always state the date context where relevant (sitemap last-submitted dates).
- On error or empty data, say so plainly and suggest the next step.
- Lead with a short summary, then present the findings in tables.
- This connector is read-only: report statuses, never claim a fix was made.
- If a tool call fails auth, tell the user to reconnect the server (OAuth).
  Don't guess credentials.

Used by [[report-format]] and the `/google-search-console:sitemaps` command.
