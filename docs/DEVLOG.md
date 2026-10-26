# BuxbrewCharge — development journal

**Author and creative direction:** Babuni.dev

## Origins and early iteration — August 2025

GitHub records an initial repository on **2025-08-18**, followed by the manifest commit `8bd4a0f` and initial Lua commit `e88f139`. This was a small experiment in giving a combat ability a visible personality. Instead of changing game mechanics, the addon ties emote output to an action button. The current source uses WoW's built-in reactions, making the character's performance depend on timing and surprise rather than custom assets.

The historical intent in the preceding sentence is reconstructed from the existing add-on and repository description; no original design conversation was recovered. The specific first-commit contents can be inspected in those commits.

## Later source revisions — November 2025 to January 2026

Git history shows Lua revisions on **2025-11-01** (`de0c85d`) and **2026-01-10** (`3ff0fcc`). Those commits have generic titles, so this journal does not pretend to know exactly why the author changed each line without a diff. A later **2026-09-18** commit (`41c5b32`) standardized client/provider terminology. This is a genuine recorded maintenance change rather than an imagined design pivot.

## Current mechanics and design character

The current Lua wraps `UseAction`, keeps the action going, chooses from ten built-in emote tokens and enforces a 21-second cooldown. `/bbc watch` and `/bbc slot` make the response discoverable and configurable in chat. The only saved preference is the watched slot. This approach makes the feature intentionally small: it appears when the player acts, not when a background process decides to interrupt.

## Documentation reconstruction — 2026-10-26

Earlier automated work placed only skeletal concept and architecture notes in the repo. This pass read the actual code, manifest and Git commits and wrote a detailed user guide, visual-content register, evidence-based decisions and test backlog. A potential installation problem surfaced: the manifest is spelled `BuxbreCharge.toc` rather than `BuxbrewCharge.toc`. The discrepancy was **documented**, not fixed.

**Attribution:** Babuni.dev authored the project and its creative direction. AI assistance in this pass comprised reading repository evidence, organizing it and drafting documentation. No game changes or live-client tests were made; installation and compatibility remain unverified.
