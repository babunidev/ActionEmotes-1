# Action Emotes #1 — development and documentation rules

**Project owner and byline: Babuni**  
**Portfolio and development umbrella: babuni.dev**

## Writing perspective

Write public-facing project narratives, concept notes, design reasoning, development journals and collaboration histories in **Babuni's first-person voice**. Use `I`, `my` and `I asked my AI assistant` where supported by Babuni's actual account. Never make Babuni a third-person subject in the main story. Do not make the AI the protagonist or narrator.

Use **Babuni** as the personal name. **babuni.dev** is the website, portfolio and umbrella for development work, not a substitute for the person's name.

Describe AI accurately and specifically: ChatGPT was a conversational Lua helper in the original development; there was no integrated agent editing files or testing in-game at that stage. Later AI documentation work must be distinguished from original development. Avoid invented first-person quotes, feelings, experiments, decisions or tests. The first-person narrative is an assisted reconstruction, not a claim of verbatim authorship of every sentence.

Technical reference tables, changelog facts, code descriptions, and test inventories may use neutral language where that is clearer, while the reasoning and lived account remain in first person.

## Project boundaries

The repository is now `ActionEmotes-1`, originally `BuxbrewCharge`. Preserve historical Lua, TOC and slash-command identifiers unless Babuni explicitly approves a runtime migration.

1. Inspect `README.md`, `CONCEPT.md`, `docs/DECISIONS.md` and Lua/TOC before changing functionality.
2. Credit Babuni's creative direction and hands-on development; separately record AI code, analysis and documentation contributions.
3. Never fabricate historical events or approvals. Distinguish recollection, source evidence, implementation and verification.
4. Do not change gameplay, the single-slot trigger, emote pool or timing without explicit direction.
5. Update relevant documentation and changelog alongside any runtime change.
6. Preserve third-party attributions and keep credentials, logs and private conversations out of public documentation.
7. Check WoW 1.12/Lua 5.0 compatibility, folder/TOC naming and hook chaining for future runtime revisions; report only tests actually performed.

The currently observed manifest filename discrepancy `BuxbreCharge.toc` remains unresolved.
