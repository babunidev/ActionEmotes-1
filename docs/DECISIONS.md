# Action Emotes #1 — my decisions and their evidence

**Creative: Babuni**

| Choice or observation | Evidence | Status |
| --- | --- | --- |
| For Buxbrew, I wanted to bring character expression from earlier WeakAuras experiments into WoW 1.12 | October 31, 2026 retrospective | Recalled motivation |
| In the public account, I chose not to name the private server in my public account | October 31, 2026 instruction | Confirmed publication choice |
| The addon was for my warrior Buxbrew; earlier WeakAuras experiments were for my orc Madaxe Mokaya | Retrospective account and related August 18, 2025 chat | Historical context |
| To distinguish this original experiment, I adopted Action Emotes #1 as the name for the original project in the series | October 31, 2026 decision | Chosen; repository is now `ActionEmotes-1` |
| The source uses a single configurable action-slot trigger | Lua `UseAction` wrapper | Implemented |
| The current addon selects from ten built-in emotes | Lua table and `DoEmote` | Implemented |
| The current code has a 21-second cooldown | Lua constant | Implemented; original reason for the exact duration unknown |
| The current addon saves the watched slot account-wide | `BuxbrewChargeDB.slot` and manifest | Source-observed |
| The installed addon keeps its historical `BuxbrewCharge` identity and `/bbc` command | Current code and manifest | No runtime migration |

## What I still need to verify

The GitHub repository is now `ActionEmotes-1`, but the installed addon retains its historical Lua, TOC and slash-command identifiers. The original `BuxbreCharge.toc` spelling error was corrected with an installable `BuxbrewCharge/` directory. Current live-client compatibility, actual addon loading and interaction with other `UseAction` wrappers still need verification.

Comparisons with later Action Emotes variants and their supported WoW client versions remain pending. That is a separate review.

## Source-history clarification

The November 1, 2025 diff (`de0c85d`) confirms that the emote pool changed from 20 to 10 tokens. The January 10, 2026 diff (`3ff0fcc`) confirms the parser change to `string.find`. Neither diff establishes why the change was made.

## Packaging correction — October 31, 2026

Following my instruction to repair installation packaging, AI moved the unchanged Lua code into `BuxbrewCharge/` and renamed the TOC to `BuxbrewCharge.toc`. The original name and saved-variable key were kept to avoid an unrelated migration. The repository structure was verified, but a working WoW 1.12 client has not yet confirmed addon loading.
