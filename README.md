# BuxbrewCharge

**Author:** Babuni.dev  
**Target:** World of Warcraft 1.12 (Vanilla)  
**Source version:** 1.0.0; **runtime status:** not verified in this documentation review.

BuxbrewCharge turns a chosen action-button press into a little theatrical event. When that slot is used, the addon attempts one randomly selected built-in character emote—such as CHARGE, ROAR, CHEER, TRAIN or WHISTLE. A fixed 21-second cooldown keeps the reactions occasional rather than constant. This is expressive roleplay flavor, **not** an auto-attack or ability automation tool.

## Configure it

1. Install the addon files under a WoW `Interface/AddOns` directory and enable it at character selection.
2. Enter `/bbc watch` and press the action button you want to use. The addon prints its numeric action slot.
3. Enter `/bbc slot <number>`; enter `/bbc watch` again to turn off slot reporting.
4. Try the configured action. The first eligible trigger after the cooldown can choose an emote.

**Packaging check required:** the committed manifest is spelled `BuxbreCharge.toc` (missing the second **w** in “Buxbrew”), whereas the project and Lua file use `BuxbrewCharge`. Confirm the actual addon-folder/manifest naming expected by your client before distributing; no installation test was run here.

| Command | Current source behavior |
| --- | --- |
| `/bbc watch` | Toggles action-slot reporting |
| `/bbc slot 3` | Saves the watched slot account-wide |
| `/bbc emote` | Requests an emote, respecting the same cooldown |
| `/bbc info` | Shows slot, cooldown and emote-pool size |
| `/bbc timer` | Shows remaining cooldown |
| `/bbc reset` | Clears the watched slot |
| `/bbc save` | Writes the slot to the saved-variable table |
| `/bbc debug` | Displays saved-variable and current-slot state |

There is **no configured chance percentage or per-slot cooldown setting** in this source snapshot. The emote list and 21-second timer are currently constants in `BuxbrewCharge.lua`.

## How it works

The Lua file wraps WoW's `UseAction`, checks whether the pressed slot matches `WATCH_SLOT`, chooses a random token from a ten-emote pool and calls `DoEmote`. It then passes the press to the previously installed `UseAction`. `BuxbrewChargeDB.slot` is an account-wide saved variable. No background per-frame loop is used.

Built-in emote behavior depends on the specific game client. Another addon also wrapping `UseAction` can create load-order interactions, so test combinations rather than assuming compatibility.

## Documentation and project record

- [Concept](CONCEPT.md) · [Experience design](docs/DESIGN.md) · [Emote content](docs/CONTENT.md)
- [Technical architecture](docs/ARCHITECTURE.md) · [Decisions and limitations](docs/DECISIONS.md)
- [Development journal](docs/DEVLOG.md) · [Historical changelog](CHANGELOG.md) · [Roadmap](ROADMAP.md)
- [AI collaboration](docs/AI_COLLABORATION.md) · [Development instructions](AGENTS.md)

Earlier dates in the journal come from actual GitHub commits. Technical conclusions based only on the current source are labeled as such.
