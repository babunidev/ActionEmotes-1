# Action Emotes #1 — how my addon works

**Creative:** Babuni  
**Source evidence:** [`BuxbrewCharge/BuxbrewCharge.lua`](../BuxbrewCharge/BuxbrewCharge.lua), [`BuxbrewCharge/BuxbrewCharge.toc`](../BuxbrewCharge/BuxbrewCharge.toc).

## What the Lua currently does

1. `UseAction(slot, checkCursor, onSelf)` is captured in `_Orig_UseAction` and replaced with a wrapper.
2. Each press lazily initializes settings, optionally prints the slot when watch mode is on and compares the integer slot to `WATCH_SLOT`.
3. On a match, `doEmoteNow()` compares `GetTime()` with `LAST_EMOTE_TIME`. It returns while less than 21 seconds have elapsed.
4. On an eligible press, it records the time, selects one of ten tokens through `math.random` and calls `DoEmote`, with a text-emote fallback if `DoEmote` is unavailable.
5. The wrapper calls the original `UseAction`, preserving the underlying button action by design.

## What the addon remembers

`VARIABLES_LOADED`, `PLAYER_ENTERING_WORLD` and `PLAYER_LOGOUT` are registered. WoW 1.12 exposes the event name through the global `event` variable within an `OnEvent` callback; it does not provide the newer `(self, event)` parameters used previously. The first two events load the saved slot; logout copies the slot into `BuxbrewChargeDB`. `/bbc slot` also saves immediately. The DB is account-wide, not character-specific.

The client initializes its random generator. The previous `PLAYER_LOGIN` handler calling `math.randomseed` has been removed; `math.random` still selects the emote token.

The timer and watch-mode switch are **not** persisted. There is no separate cooldown scheduler, animation asset or dependency.

## What I still need to verify

- The original misspelled manifest name was corrected. Both files now live under the installable `BuxbrewCharge/` folder. A live-client installation check is still required.
- Global `UseAction` replacement can interact with other addons; load order and correct delegation must be checked.
- The timer uses `GetTime()` and starts from `LAST_EMOTE_TIME = 0`; an immediate first emote is not guaranteed if client uptime is less than 21 seconds.
- Code reading is not equivalent to live-client confirmation.

## Files in my repository

`BuxbrewCharge/BuxbrewCharge.lua` (unchanged implementation), `BuxbrewCharge/BuxbrewCharge.toc` (renamed manifest), `README.md`, `LICENSE`, and development records. The repository's outer `ActionEmotes-1` directory is not the WoW addon folder. The repository includes automated package-layout checks and a Lua test harness that simulates Vanilla event globals. These tests cannot establish live-client behavior.
