# BuxbrewCharge — development record

**Author:** Babuni.dev

## Retrospective source reconstruction — 2026-10-26

The repository preserves a small, focused WoW experiment. A Vanilla WoW 1.12 action-slot emote addon: pressing one configured action button may produce a random built-in battle or reaction emote. Attach expressive character reactions to a player action without altering combat outcomes. The visible implementation supplies the clearest record of how the interaction was approached: `BuxbrewCharge.lua` hooks `UseAction`, draws from `DoEmote` tokens, retains an account-wide slot setting in `BuxbrewChargeDB`, and uses a 21-second emote cooldown. `BuxbreCharge.toc` declares the add-on and saved variables.

This is a retrospective reconstruction, not a transcript of original design discussions. The visible source uses built-in emotes rather than custom audio or visuals; triggering is tied to an action slot instead of spell-success detection. Its source and metadata existed before the current documentation pass; original conception and iteration dates are not recoverable from these files alone. In this pass, AI assistance organized the existing evidence into documentation, without changing gameplay or attributing the original idea to AI.

## Verification

Evidence: current `README.md`, addon `.toc` metadata and inspected main `.lua` source; no full historical conversation or runtime test was available. Manual validation in a WoW 1.12 client, slot-watch and configuration persistence, cooldown behavior, and safe operation with unknown emote tokens.
