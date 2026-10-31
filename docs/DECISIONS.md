# Action Emotes #1 / BuxbrewCharge — decisions and evidence

**Creator:** Babuni.dev

| Choice | Evidence | Status |
| --- | --- | --- |
| Bring character-expression behavior from earlier WeakAuras experiments into WoW 1.12 | Creator retrospective, 2026-10-31 | Historical intent, creator-supplied |
| Use an unnamed private server as the public description of the original environment | Creator instruction, 2026-10-31 | Approved disclosure boundary |
| Associate the first addon with warrior Buxbrew rather than the earlier orc Mad X Mokaya | Creator retrospective and related 2025-08-18 chat | Historical identity |
| Treat this as Action Emotes #1 | Creator direction, 2026-10-31 | Approved naming direction; repository rename pending |
| Trigger from one selected action slot | `UseAction` wrapper and saved slot | Implemented |
| Use ten built-in emotes | Lua emote table and `DoEmote` | Implemented |
| Fixed 21-second cooldown | Lua constant | Implemented; reason for exact interval unknown |
| Save account-wide watched slot | `BuxbrewChargeDB.slot` and TOC | Source-observed |
| Keep original runtime identifiers in this history pass | Documentation-only scope, 2026-10-31 | No runtime rename attempted |

## Outstanding work

A GitHub repository rename to a path-safe form such as `ActionEmotes1` remains pending. It is distinct from renaming the installed addon and its Lua/TOC files, which may affect installation and saved settings. The typo `BuxbreCharge.toc`, live WoW 1.12 compatibility and interaction with other `UseAction` wrappers require verification.

The differences between this addon and later family members, including supported private-server client versions, have not yet been audited.
