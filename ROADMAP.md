# Action Emotes #1 — roadmap

**Creative:** Babuni

## What I have now

The repository contains the 1.0.0 Lua addon and interface-11200 manifest in a correctly named `BuxbrewCharge/` installation folder. It retains the ten-emote pool, 21-second throttle, `/bbc` commands and account-wide saved-slot support. Fresh in-game verification has not been performed.

## What I still need to verify

- **Packaging in a client:** verify that the committed `BuxbrewCharge/` directory, including `BuxbrewCharge.toc`, is recognized and loads in the original game. The repository structure has been corrected and inspected, but not live-tested.
- **Live client:** confirm the addon appears in the addon menu and `/bbc watch` reports the intended numeric slot.
- **Gameplay:** verify a watched-slot press still invokes the ability, the emote pool is valid and duplicate presses are throttled.
- **Persistence:** verify `BuxbrewChargeDB.slot` survives `/reload` and a restart.
- **Interoperability:** check behavior alongside other global `UseAction` hook addons.
- **Edge cases:** check unknown slot, `/bbc reset`, logout saving, and immediate `/bbc emote` at startup.

These checks still require a real WoW 1.12 client. The packaging change did not approve or implement new gameplay features.
