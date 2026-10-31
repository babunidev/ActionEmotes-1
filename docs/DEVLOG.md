# Action Emotes #1 / BuxbrewCharge — development journal

**By:** Babuni  
**Status:** Historical reconstruction combining repository evidence with Babuni's account recorded on 2026-10-31.

## Before the addon: giving characters a voice

The project did not begin as a plan to build a suite of addons. It began with a desire to make a player character feel expressive in the middle of ordinary gameplay. Babuni had already explored event-driven character behavior with WeakAuras while playing **Mad X Mokaya**, an orc in WoW Classic Anniversary. That experience established the idea: a press or event could carry a small, theatrical response that made a character feel more alive.

Later, while playing the warrior **Buxbrew** on an unnamed World of Warcraft private server, Babuni wanted a similar experience in the older **1.12 client**. The earlier WeakAuras workflow was not the path for this environment, so the idea became a small Lua addon.

## August 2025: making it work by hand

This was Babuni's **first addon**. Babuni worked primarily on their own computer and used a standard ChatGPT conversation to discuss and revise Lua code. There was no integrated editing agent making changes to a repository: Babuni manually copied code from chat into Lua files, created and maintained the directory structure, installed the addon, and tested the results inside the game.

That workflow was awkward by modern standards. Every iteration required Babuni to carry code between chat and files, identify behavior in the client, and decide what to change next. But it was also unusually tangible: trying a new version in-game and seeing the character respond was satisfying, and the limitations of the old client became part of the experiment.

The addon was called **BuxbrewCharge** because of its connection to the warrior Buxbrew and the Charge ability. The actual implementation is broader: it watches a configured action slot rather than requiring Charge specifically. This distinction motivates the proposed retrospective series title **Action Emotes #1**.

The repository was created on **2025-08-18**. Git history includes manifest commit `8bd4a0f` and initial Lua commit `e88f139`. A related chat from that date records the addon name and clarifies that Buxbrew—not Mad X Mokaya—was its intended character. The full original Lua-development conversation has not been recovered. These facts should not be mistaken for a verbatim record of each early iteration.

## How the first design worked

The source wraps `UseAction`, recognizes one user-selected action slot, and forwards the original action while occasionally performing a built-in emote. The current snapshot contains a ten-emote pool, a fixed 21-second cooldown, and basic chat commands for observing and selecting the slot. Simplicity was a practical strength: the addon did one small thing, and its result was immediately visible in-game.

Babuni's retrospective explains the motivation and hands-on testing during original development. A new in-game verification of the **current committed source** has not been performed.

## Later source changes

Git history records Lua revisions on **2025-11-01** (`de0c85d`) and **2026-01-10** (`3ff0fcc`). Their generic commit messages do not independently establish the precise reasons for each change. A **2026-09-18** commit (`41c5b32`) updated compatibility/provider-neutral wording.

## Documentation reconstruction: October 2026

A **2026-10-26** documentation review examined existing Lua, TOC and Git evidence and expanded the project record. It noted a possible packaging issue: `BuxbreCharge.toc` omits a “w” relative to `BuxbrewCharge`. The discrepancy was documented, not fixed.

On **2026-10-31**, Babuni supplied the fuller personal history above and chose to treat this addon as **Action Emotes #1**, the original experiment in a developing family of expressive addons. Babuni also specified that the private server must remain unnamed. Later addons may be compared for client versions and different features in a separate review. The GitHub repository has since been renamed to `ActionEmotes-1`. The installed addon's Lua and TOC identifiers remain unchanged.

**Attribution and verification:** The original motivation, player characters, hands-on workflow, choices and recollections come from Babuni. AI contributed conversational coding assistance during original development according to Babuni's account, and drafted this retrospective record in 2026. Actual code commits remain historical evidence; the full original conversation, precise iteration sequence and fresh live-client verification remain unavailable.
