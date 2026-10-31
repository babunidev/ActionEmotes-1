# Action Emotes #1 — my decisions and their evidence

**By Babuni**

| My choice | Evidence | Status |
| --- | --- | --- |
| I wanted to bring character expression from earlier WeakAuras experiments into WoW 1.12 | My October 31, 2026 retrospective | Recalled motivation |
| I chose not to name the private server in my public account | My October 31, 2026 instruction | Confirmed publication choice |
| I made this addon for my warrior Buxbrew; Madaxe Mokaya was the orc associated with my earlier WeakAuras experiments | My recollection and a related August 18, 2025 chat | Historical context |
| I adopted Action Emotes #1 as the name for the original project in the series | My October 31, 2026 decision | Chosen; repository is now `ActionEmotes-1` |
| I used a single configurable action-slot trigger | Lua `UseAction` wrapper | Implemented |
| The current addon selects from ten built-in emotes | Lua table and `DoEmote` | Implemented |
| The current code has a 21-second cooldown | Lua constant | Implemented; original reason for the exact duration unknown |
| The current addon saves the watched slot account-wide | `BuxbrewChargeDB.slot` and manifest | Source-observed |
| I have not renamed the installed addon files or command identifiers | Current source files and documentation review | Runtime migration not attempted |

## What I still need to verify

The GitHub repository is now `ActionEmotes-1`, but the installed addon retains its historical Lua, TOC and slash-command identifiers. I still need to check the `BuxbreCharge.toc` naming discrepancy, current live-client compatibility and how the addon interacts with other `UseAction` wrappers.

I have not yet compared all later Action Emotes variants or their supported WoW client versions. That is a separate review.
