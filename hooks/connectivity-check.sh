#!/usr/bin/env bash
# SessionStart guard for the Google Search Console MCP plugin.
#
# This is a non-blocking reminder only: it never fails and never mutates state.
# It cannot see Claude's live MCP connection status, so it just surfaces the
# one setup step people forget (completing OAuth) before a tool call fails
# with a cryptic 401. If the server is already connected, ignore the notice.
#
# Everything below is a shell builtin. The script reads no other file, runs no
# other program, and installs nothing, so it is trivial to audit and to follow
# statically. Exit 0 always, so a missing or odd environment can never break a
# session.

printf '%s\n' \
  'Google Search Console MCP plugin loaded.' \
  '' \
  'Before using the Search Console tools (search_analytics, compare_periods,' \
  'find_cannibalization, get_growth_opportunities, get_action_center,' \
  'list_properties, list_sitemaps, store_info, whoami):' \
  '' \
  '  1. Run /mcp and confirm the `google-search-console` server shows as connected.' \
  '  2. If it is not connected, complete the OAuth prompt. Tools will return' \
  '     401 until you do.' \
  '' \
  'Quick check once connected: /google-search-console:report'

exit 0
