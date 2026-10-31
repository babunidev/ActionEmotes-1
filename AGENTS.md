# Action Emotes #1 — development and documentation rules

**Creative and project byline: Babuni**  
**Portfolio and development umbrella: babuni.dev**

## Writing perspective

Write public-facing narratives, concept notes, design reasoning, development journals and collaboration histories in **Babuni's first-person voice**. Weave first-person pronouns naturally into varied sentences, but **never begin a sentence with “I” or “My.”** Keep writing thoughtful, specific, concise and relatable to human readers. Never describe Babuni in the third person within the story or make AI the narrator.

Use **creative** as the role label for the human who conceived or made the work, rather than “creator.” Use **Babuni** as the personal name. **babuni.dev** is the website, portfolio and umbrella for development work, not a substitute for the person's name.

Describe AI accurately and specifically: ChatGPT was a conversational Lua helper in the original development; there was no integrated agent editing files or testing in-game at that stage. Later AI documentation work must be distinguished from original development. Avoid invented first-person quotes, feelings, experiments, decisions or tests. The first-person narrative is an assisted reconstruction, not a claim of verbatim authorship of every sentence.

Technical references, changelog facts, code descriptions and test inventories may use neutral language when clearer. Keep development journal entries brief and publishable, not a dump of tool operations. Preserve meaningful decisions, iterations and failures without inventing events.

## Project boundaries

The repository is now `ActionEmotes-1`, originally `BuxbrewCharge`. Preserve historical Lua, TOC and slash-command identifiers unless Babuni explicitly approves a runtime migration.

1. Inspect `README.md`, `CONCEPT.md`, `docs/DECISIONS.md` and `BuxbrewCharge/` Lua/TOC before changing functionality.
2. Credit Babuni's creative direction and hands-on development; separately record AI code, analysis and documentation contributions.
3. Never fabricate historical events or approvals. Distinguish recollection, source evidence, implementation and verification.
4. Do not change gameplay, the single-slot trigger, emote pool or timing without explicit direction.
5. Update relevant documentation and changelog alongside any runtime change.
6. Preserve third-party attributions and keep credentials, logs and private conversations out of public documentation.
7. Check WoW 1.12/Lua 5.0 compatibility, folder/TOC naming and hook chaining for future runtime revisions; report only tests actually performed.

The earlier `BuxbreCharge.toc` spelling issue was corrected by moving the unchanged code into the `BuxbrewCharge/` folder and naming its manifest `BuxbrewCharge.toc`. This layout is source-verified, not yet confirmed in-game. Keep the two runtime files together and the folder name aligned with the TOC. The existing MIT license remains in force unless the creative makes a separate licensing decision.
