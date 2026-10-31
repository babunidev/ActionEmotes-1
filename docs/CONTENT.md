# Action Emotes #1 — emotes and content

**Author:** Babuni

## The emote pool I used

The current Lua contains ten strings in `EMOTE_TOKENS` in `BuxbrewCharge.lua` are:

`CHARGE`, `ATTACKTARGET`, `ROAR`, `CHEER`, `FLEX`, `TRAIN`, `LAUGH`, `CHUCKLE`, `BORED`, `WHISTLE`.

The strings refer to built-in World of Warcraft emotes. They are configuration/data in the addon, not externally downloaded media files or original third-party sound samples.

## What appears in chat

The `BBC:` chat prefix, `/bbc` command help, slot-watch reports, cooldown reports and debug messages are generated in code. The emergency fallback is the text emote “roars a battlecry!” if `DoEmote` is absent.

## What I need to preserve

When I change the emotes, I need to keep this inventory aligned with the Lua table and verify what the client actually supports. World of Warcraft's built-in content remains distinct from my addon code and project work.
