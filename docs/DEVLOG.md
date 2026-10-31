# Action Emotes #1 — development journal

**Creative: Babuni**  
**Historical note:** Retrospective recollections recorded October 31, 2026, supplemented by source and Git history.

## From WeakAuras to a first addon — August 2025

Character expression had already caught my interest through WeakAuras experiments for my orc **Madaxe Mokaya** in WoW Classic Anniversary. Later, with my warrior **Buxbrew** on a private server using the older **WoW 1.12** client, I wanted similar reactions during ordinary actions. A small addon became the next experiment.

Development happened between an ordinary ChatGPT conversation and local files on my computer. ChatGPT suggested Lua code and revisions; I copied the snippets, created the folders, installed the addon and tested it in-game. Problems and new ideas sent me back to the chat for another attempt. Seeing Buxbrew respond made the effort worthwhile.

The original name, **BuxbrewCharge**, came from the character and ability, although the code watched a chosen slot rather than Charge alone. The first Lua and manifest commits date to August 18, 2025. Without the complete original chat, those individual debugging exchanges cannot be reconstructed accurately.

## What the surviving source reveals

The committed implementation watches a slot through a `UseAction` wrapper, delegates to the original action and selects a built-in emote after a 21-second cooldown. A November 1, 2025 revision reduced the pool from 20 to ten tokens. On January 10, 2026, command parsing changed from `string.match` to `string.find`. The diffs establish what changed, not why.

## Recovering the story — October 2026

An AI-assisted documentation review on October 26 expanded the project record and identified the unresolved `BuxbreCharge.toc` packaging issue. No new in-game test was performed.

On October 31, the fuller history of my first addon became part of the documentation. To distinguish it from successors, I chose **Action Emotes #1** as the project name and kept the original server unnamed in the public account. AI helped assemble and refine the first-person narrative; creative direction and original local testing remain my own.

This journal is a retrospective reconstruction, not a recovered development transcript. Current client behavior, interoperability with other `UseAction` addons and comparisons with later variants remain unverified.

## Correcting the installable folder — October 31, 2026

The earlier review exposed a spelling mistake in the TOC filename and a repository layout that could not be copied straight into the game's AddOns directory. At my request, AI reorganized the unchanged addon files under `BuxbrewCharge/` and renamed the manifest to match. The repository layout and file references were checked, but the addon has not yet been tested in the game.

## Revisiting Vanilla event behavior — October 31, 2026

A source review revealed that the addon's event handler used a newer callback convention and tried to seed the random generator itself. After checking references specific to the old client, I asked AI to correct both together. The implementation now uses Vanilla's global event name, and the redundant seeding step is gone. A simulated event test covers the relevant code paths; testing in the game remains outstanding.
