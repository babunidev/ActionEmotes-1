# Action Emotes #1 (historically BuxbrewCharge)

**Creator and creative direction:** Babuni.dev  
**Original repository and installed addon:** `BuxbrewCharge`  
**Target:** World of Warcraft 1.12 (Vanilla)  
**Source version:** 1.0.0; **current runtime status:** not independently verified.

**Action Emotes #1** is the proposed series identity for the creator's first World of Warcraft addon. The GitHub repository and Lua addon are still named `BuxbrewCharge`; the proposed rename has **not** yet been applied.

The addon watches one chosen action-bar slot. When that action is pressed and the cooldown permits it, it performs a random built-in emote while forwarding the original action. Despite the historical name, it does **not** exclusively watch Charge. It adds character expression, not combat automation.

## Origin and purpose

The creator began experimenting with expressive character behavior through WeakAuras while playing an orc called **Mad X Mokaya** in WoW Classic Anniversary. Later, while playing a warrior called **Buxbrew** on an unnamed World of Warcraft private server using the older 1.12 client, the creator wanted to bring that idea to a client without the same WeakAuras workflow.

This was the creator's first addon. Development was primarily local and hands-on: discussing Lua snippets in a normal ChatGPT chat, copying them manually into local files, building the addon folder structure, loading the addon in-game, observing its behavior, and returning to the chat to refine it. This predates the creator's use of integrated AI coding agents such as Cursor or Codex. The repeated manual editing and testing made even this small result hard-won and satisfying.

The account above is a **creator-supplied retrospective (2026-10-31)**, not a claim that the original development transcript was recovered. A related chat dated **2025-08-18** confirms the historical name BuxbrewCharge and its association with Buxbrew; the original step-by-step Lua-building conversation has not been located.

## Configure it

1. Place the original addon files in the appropriate WoW `Interface/AddOns` folder and enable the addon.
2. Type `/bbc watch`, press the action button to identify its slot number, and type `/bbc watch` again to stop reporting.
3. Type `/bbc slot <number>` to choose the watched action slot.
4. Use the selected action to trigger eligible emotes.

| Command | Source-observed behavior |
| --- | --- |
| `/bbc watch` | Toggle action-slot reports |
| `/bbc slot 3` | Save watched slot |
| `/bbc emote` | Request an emote subject to cooldown |
| `/bbc info` | Show configuration and emote count |
| `/bbc timer` | Show remaining cooldown |
| `/bbc reset` | Clear watched slot |
| `/bbc save` | Save slot configuration |
| `/bbc debug` | Report configuration state |

## Technical scope and limitations

The Lua wraps `UseAction`, checks the watched slot, selects one of ten built-in `DoEmote` tokens and uses a fixed **21-second** cooldown. The watched slot is stored in `BuxbrewChargeDB.slot`. There is no user-configurable chance percentage or per-slot cooldown in this version. An action-slot press, not a verified successful ability cast, is the trigger.

**Known packaging discrepancy:** the committed manifest is named `BuxbreCharge.toc` (missing a “w”), while the project and Lua file say `BuxbrewCharge`. The client installation behavior has not been re-tested. The historical addon file and slash command names were intentionally left unchanged in this documentation revision.

## Project record

- [Concept](CONCEPT.md) · [Development journal](docs/DEVLOG.md) · [Human–AI collaboration](docs/AI_COLLABORATION.md)
- [Architecture](docs/ARCHITECTURE.md) · [Design](docs/DESIGN.md) · [Content](docs/CONTENT.md)
- [Decisions](docs/DECISIONS.md) · [Changelog](CHANGELOG.md) · [Roadmap](ROADMAP.md) · [Development instructions](AGENTS.md)
