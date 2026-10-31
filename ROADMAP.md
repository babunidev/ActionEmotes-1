# BuxbrewCharge — roadmap

**Author:** Babuni

## Current source baseline

The repo holds a 1.0.0 Lua addon, an interface-11200 manifest, a ten-emote pool, a 21-second throttle, `/bbc` commands and account-wide saved-slot support. The code has not been executed in this audit.

## Priority: verify installation and behavior

- **Packaging:** verify `BuxbreCharge.toc` versus `BuxbrewCharge` folder naming; resolve only with an explicit, reviewed code/package correction.
- **Live client:** confirm the addon appears in the addon menu and `/bbc watch` reports the intended numeric slot.
- **Gameplay:** verify a watched-slot press still invokes the ability, the emote pool is valid and duplicate presses are throttled.
- **Persistence:** verify `BuxbrewChargeDB.slot` survives `/reload` and a restart.
- **Interoperability:** check behavior alongside other global `UseAction` hook addons.
- **Edge cases:** check unknown slot, `/bbc reset`, logout saving, and immediate `/bbc emote` at startup.

These are **proposed verification tasks**, not completed tests or approved feature expansions. No future feature has been requested in this documentation pass.
