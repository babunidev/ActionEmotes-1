# Action Emotes #1

**By Babuni** · Originally **BuxbrewCharge** · World of Warcraft 1.12

This was my first World of Warcraft addon. I made it because I wanted my character to feel more expressive during ordinary gameplay. It watches an action-bar slot I choose and, when I press it, occasionally performs a random built-in emote without replacing the action itself. Despite its original name, it was never restricted to Charge.

## Where it began

Before this, I had experimented with WeakAuras in WoW Classic Anniversary for my orc **Madaxe Mokaya**. When I later played my warrior **Buxbrew** on an unnamed private server using the older WoW 1.12 client, I wanted some of that personality there too.

I built the addon locally with help from an ordinary ChatGPT conversation. I discussed code with my AI assistant, copied Lua snippets into files myself, created the folders, installed the addon and tested it in the game. Each time I spotted something to improve, I went back to the chat, worked through the change, copied the new code and tried again. I wasn't using Cursor, Codex or another integrated coding agent. It took persistence, but seeing Buxbrew respond in-game made it worthwhile.

I now call this original experiment **Action Emotes #1** to distinguish it from the related addons I developed afterward. The GitHub repository is [ActionEmotes-1](https://github.com/babunidev/ActionEmotes-1), while its historical Lua, TOC and commands still use BuxbrewCharge identifiers.

## Using the original addon

1. Place the addon in the appropriate WoW `Interface/AddOns` directory and enable it.
2. Enter `/bbc watch`, press a button to identify its action-slot number, then enter `/bbc watch` again.
3. Enter `/bbc slot <number>` to select the slot.
4. Use that action to trigger eligible emotes.

| Command | Function |
| --- | --- |
| `/bbc watch` | Report pressed action slots |
| `/bbc slot 3` | Save the watched slot |
| `/bbc emote` | Request an emote subject to cooldown |
| `/bbc info` | Show slot and emote information |
| `/bbc timer` | Show remaining cooldown |
| `/bbc reset` | Clear watched slot |
| `/bbc save` | Save configuration |
| `/bbc debug` | Print debugging details |

## What the code actually does

The source wraps `UseAction`, watches one chosen slot, chooses among ten built-in emotes with `DoEmote`, and uses a fixed 21-second cooldown. It saves the watched slot in `BuxbrewChargeDB.slot`. It does **not** verify a successful ability cast, offer a configurable chance percentage or automate combat.

The committed manifest is named `BuxbreCharge.toc`, which differs from `BuxbrewCharge.lua`. That packaging discrepancy remains uncorrected, and I have not conducted a fresh in-game test of the current committed code.

**About this account:** This origin story comes from my recollections shared on October 31, 2026, combined with repository evidence. The original step-by-step ChatGPT conversation has not been recovered. Later AI-assisted documentation is not the same as original in-game testing.

## Project documentation

[Concept](CONCEPT.md) · [Development journal](docs/DEVLOG.md) · [AI collaboration](docs/AI_COLLABORATION.md) · [Architecture](docs/ARCHITECTURE.md) · [Design](docs/DESIGN.md) · [Content](docs/CONTENT.md) · [Decisions](docs/DECISIONS.md) · [Changelog](CHANGELOG.md) · [Roadmap](ROADMAP.md) · [AI development instructions](AGENTS.md)
