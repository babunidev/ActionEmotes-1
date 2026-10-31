# Action Emotes #1 — roadmap

**Creative:** Babuni

## What I have now

The repository contains a 1.0.0 Lua addon, an interface-11200 manifest, a ten-emote pool, a 21-second throttle, `/bbc` commands and account-wide saved-slot support. A fresh client verification of the currently committed addon has not been performed.

## What I still need to verify

- **Packaging:** verify `BuxbreCharge.toc` versus `BuxbrewCharge` folder naming; resolve only with an explicit, reviewed code/package correction.
- **Live client:** confirm the addon appears in the addon menu and `/bbc watch` reports the intended numeric slot.
- **Gameplay:** verify a watched-slot press still invokes the ability, the emote pool is valid and duplicate presses are throttled.
- **Persistence:** verify `BuxbrewChargeDB.slot` survives `/reload` and a restart.
- **Interoperability:** check behavior alongside other global `UseAction` hook addons.
- **Edge cases:** check unknown slot, `/bbc reset`, logout saving, and immediate `/bbc emote` at startup.

These are checks I have not completed as part of this documentation revision. No new gameplay features were approved in this documentation review.
