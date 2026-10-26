# BuxbrewCharge — implementation architecture

**Author:** Babuni.dev  
**Source evidence:** `BuxbrewCharge.lua`, `BuxbreCharge.toc`.

## Event and call path

1. `UseAction(slot, checkCursor, onSelf)` is captured in `_Orig_UseAction` and replaced with a wrapper.
2. Each press lazily initializes settings, optionally prints the slot when watch mode is on and compares the integer slot to `WATCH_SLOT`.
3. On a match, `doEmoteNow()` compares `GetTime()` with `LAST_EMOTE_TIME`. It returns while less than 21 seconds have elapsed.
4. On an eligible press, it records the time, selects one of ten tokens through `math.random` and calls `DoEmote`, with a text-emote fallback if `DoEmote` is unavailable.
5. The wrapper calls the original `UseAction`, preserving the underlying button action by design.

## Lifecycle and storage

`VARIABLES_LOADED`, `PLAYER_ENTERING_WORLD`, `PLAYER_LOGIN` and `PLAYER_LOGOUT` are registered. The first two hydrate the saved slot; login seeds the PRNG; logout copies the slot into `BuxbrewChargeDB`. `/bbc slot` also saves immediately. The DB is account-wide, not character-specific.

The timer and watch-mode switch are **not** persisted. There is no separate cooldown scheduler, animation asset or dependency.

## Integration risks

- The file `BuxbreCharge.toc` does not exactly match the project name; this may block loading depending on the installed folder name.
- Global `UseAction` replacement can interact with other addons; load order and correct delegation must be checked.
- The timer is based on `GetTime()` and starts from `LAST_EMOTE_TIME = 0`; initial availability depends on client uptime.
- Code reading is not equivalent to live-client confirmation.

## Repository inventory

`BuxbrewCharge.lua` (implementation), `BuxbreCharge.toc` (manifest), `README.md`, `LICENSE`, and development records. No automated tests are committed in the inspected tree.
