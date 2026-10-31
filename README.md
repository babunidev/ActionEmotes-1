# Action Emotes #1

**Creative: Babuni** · Originally **BuxbrewCharge** · World of Warcraft 1.12

This was my first World of Warcraft addon. For Buxbrew, I wanted my character to feel more expressive during ordinary gameplay. It watches an action-bar slot I choose and, when I press it, performs a randomly chosen built-in emote when its cooldown permits, without replacing the action itself. Despite its original name, it was never restricted to Charge.

## Where it began

Before this, I had experimented with WeakAuras in WoW Classic Anniversary for my orc **Madaxe Mokaya**. When I later played my warrior **Buxbrew** on an unnamed private server using the older WoW 1.12 client, I wanted some of that personality there too.

The addon began locally with help from an ordinary ChatGPT conversation. During development, I discussed code with my AI assistant, copied Lua snippets into files myself, created the folders, installed the addon and tested it in the game. Each time I spotted something to improve, I went back to the chat, worked through the change, copied the new code and tried again. At the time, I wasn't using Cursor, Codex or another integrated coding agent. It took persistence, but seeing Buxbrew respond in-game made it worthwhile.

To distinguish this original experiment from the related addons that followed, I now call it **Action Emotes #1**. The GitHub repository is [ActionEmotes-1](https://github.com/babunidev/ActionEmotes-1), while its historical Lua, TOC and commands still use BuxbrewCharge identifiers.

## Using the original addon

1. Download and extract the repository archive, or clone the repository.
2. Copy the **`BuxbrewCharge` folder inside the repository** to your WoW 1.12 `Interface/AddOns/` directory. Do not install the outer `ActionEmotes-1` repository folder.
3. Confirm that `Interface/AddOns/BuxbrewCharge/` contains both `BuxbrewCharge.toc` and `BuxbrewCharge.lua`. Enable the addon in the client.
4. Enter `/bbc watch`, press an action-bar button to find its slot number, then enter `/bbc watch` again.
5. Enter `/bbc slot <number>` (whole numbers from 1 through 120) to select that slot; eligible presses can then trigger emotes.

| Command | Function |
| --- | --- |
| `/bbc watch` | Report pressed action slots |
| `/bbc slot 3` | Save a valid action slot (1–120) |
| `/bbc emote` | Request an emote subject to cooldown |
| `/bbc info` | Show slot and emote information |
| `/bbc timer` | Show remaining cooldown (0 seconds before the first emote) |
| `/bbc reset` | Clear watched slot |
| `/bbc save` | Save configuration |
| `/bbc debug` | Print debugging details |

## What the code actually does

The source wraps `UseAction`, watches one chosen slot, chooses among ten built-in emotes with `DoEmote`, and uses a fixed 21-second cooldown **between** emotes. The first eligible press can trigger an emote immediately. It saves the watched slot in `BuxbrewChargeDB.slot`. It does **not** verify a successful ability cast, offer a configurable activation probability or automate combat. Randomness determines which emote is attempted, not whether an eligible press triggers one.

The original manifest spelling error (`BuxbreCharge.toc`) has been corrected by placing the renamed manifest alongside the Lua source in `BuxbrewCharge/`. The event handler now uses the WoW 1.12 global `event` convention, and the redundant `math.randomseed` call has been removed. Automated tests cover packaging, simulated legacy events, slot validation, and cooldown behavior. The latest code has not been verified inside a running WoW 1.12 client.

## Community testing and feedback

This addon remains available for anyone who wants to try it. Since I'm no longer playing on those servers, I won't be testing new revisions in-game myself. The automated checks are useful, but real-client compatibility remains unverified for the latest version.

Anyone who tests it is welcome to share feedback, including the client/server version, what worked, and any errors, at **[babunigaming@gmail.com](mailto:babunigaming@gmail.com)**.

**About this account:** This origin story comes from my recollections shared on October 31, 2026, combined with repository evidence. The original step-by-step ChatGPT conversation has not been recovered. Later AI-assisted documentation is not the same as original in-game testing.

## Project documentation

[Concept](CONCEPT.md) · [Development journal](docs/DEVLOG.md) · [AI collaboration](docs/AI_COLLABORATION.md) · [Architecture](docs/ARCHITECTURE.md) · [Design](docs/DESIGN.md) · [Content](docs/CONTENT.md) · [Decisions](docs/DECISIONS.md) · [Changelog](CHANGELOG.md) · [Roadmap](ROADMAP.md) · [AI development instructions](AGENTS.md)
