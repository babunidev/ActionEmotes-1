# Action Emotes #1 — change history

**Creative:** Babuni

## 2026-10-26 — my documentation review

- At my request, AI replaced the minimal README and short outlines with source-grounded usage, architecture, creative intent, content inventory, decision register, journal and AI attribution.
- The review identified the committed `BuxbreCharge.toc` spelling as a packaging risk requiring a live install check.
- **Documentation only:** no Lua, TOC or client behavior was changed; no test was executed.

## Earlier GitHub history

- **2025-08-18:** manifest and Lua source first added (`8bd4a0f`, `e88f139`).
- **2025-11-01:** The emote pool was reduced from 20 to 10 tokens, adding `BORED` and `WHISTLE` (`de0c85d`); the reasoning is not recorded in the diff.
- **2026-01-10:** Slash-command parsing changed from `string.match` to `string.find` (`3ff0fcc`); the reason is not recorded in the diff.
- **2026-09-18:** compatibility/provider-neutral description cleanup (`41c5b32`).
- **2026-10-26:** author-credit and initial documentation commits preceded this expansion.

The older diffs now establish what changed, but not why those revisions were made.

## 2026-10-31 — first-person project documentation

- On October 31, I explained the original development experience and asked my AI assistant to rewrite the project record in my own perspective.
- The README, concept, development journal, collaboration account, decisions and other documentation were revised; the instructions for future AI documentation now require first-person narration.
- This is documentation work. No in-game verification or gameplay modification was performed.

## 2026-10-31 — narrative and evidence review

- At my direction, AI revised the documents to follow the new creative-first writing rules, with varied sentence openings and clear attribution.
- Inspection of earlier Lua diffs clarified the emote-pool and parser changes; the development journal was condensed.
- **Documentation only:** no Lua, manifest or license change and no fresh in-game test.

## 2026-10-31 — installation packaging correction

- Following my request to repair installation packaging, AI moved the unchanged Lua source and existing TOC contents into an installable `BuxbrewCharge/` folder and corrected the manifest filename to `BuxbrewCharge.toc`.
- Documentation was updated to distinguish the repository name (`ActionEmotes-1`) from the addon folder installed in `Interface/AddOns/`.
- **Verified:** file layout, manifest reference and unchanged Lua content by Git object identity. **Not yet verified:** loading or behavior in a WoW 1.12 client.
