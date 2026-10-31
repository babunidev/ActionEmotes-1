# Action Emotes #1 — my decisions and their evidence

**By:** Babuni

| Choice | Evidence | Status |
| --- | --- | --- |
| I wanted to bring character-expression behavior from earlier WeakAuras experiments into WoW 1.12 | Babuni's retrospective, 2026-10-31 | Historical intent, Babuni-supplied |
| I chose to describe the original environment as an unnamed private server as the public description of the original environment | Babuni's instruction, 2026-10-31 | Approved disclosure boundary |
| I made the first addon for warrior Buxbrew rather than the earlier orc Madaxe Mokaya with warrior Buxbrew rather than the earlier orc Mad X Mokaya | Babuni's retrospective and related 2025-08-18 chat | Historical identity |
| I chose Action Emotes #1 as the series name | Babuni's direction, 2026-10-31 | Naming chosen; GitHub repository renamed to `ActionEmotes-1` |
| I used one selected action slot as the trigger | `UseAction` wrapper and saved slot | Implemented |
| I used ten built-in emotes | Lua emote table and `DoEmote` | Implemented |
| The current code has a fixed 21-second cooldown | Lua constant | Implemented; reason for exact interval unknown |
| The addon saves an account-wide watched slot | `BuxbrewChargeDB.slot` and TOC | Source-observed |
| I kept the original runtime identifiers in this history pass | Documentation-only scope, 2026-10-31 | No runtime rename attempted |

## What I still need to check

I renamed the GitHub repository to `ActionEmotes-1`. This is distinct from renaming the installed addon and its Lua/TOC files, which may affect installation and saved settings. The typo `BuxbreCharge.toc`, live WoW 1.12 compatibility and interaction with other `UseAction` wrappers require verification.

I have not yet audited the differences between this addon and later family members, including supported private-server client versions, have not yet been audited.
