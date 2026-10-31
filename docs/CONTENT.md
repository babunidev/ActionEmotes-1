# BuxbrewCharge — content inventory

**Author:** Babuni

## Original/current emote pool

The ten strings in `EMOTE_TOKENS` in `BuxbrewCharge.lua` are:

`CHARGE`, `ATTACKTARGET`, `ROAR`, `CHEER`, `FLEX`, `TRAIN`, `LAUGH`, `CHUCKLE`, `BORED`, `WHISTLE`.

The strings refer to built-in World of Warcraft emotes. They are configuration/data in the addon, not externally downloaded media files or original third-party sound samples.

## Text surfaced to the player

The `BBC:` chat prefix, `/bbc` command help, slot-watch reports, cooldown reports and debug messages are generated in code. The emergency fallback is the text emote “roars a battlecry!” if `DoEmote` is absent.

## Maintenance notes

If content changes later, keep this inventory aligned with the Lua table and the actual client-supported token list. Treat game content and its intellectual-property ownership separately from Babuni's author credit on the addon.
