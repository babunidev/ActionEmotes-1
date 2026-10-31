# Action Emotes #1 — concept

**Creative: Babuni**

For my warrior Buxbrew, I wanted to have more personality than the abilities and damage numbers on the screen could provide. A little cheer, roar or ridiculous reaction at the right moment could make routine fighting feel more alive. Earlier, I had explored that idea through WeakAuras for Madaxe Mokaya in Classic Anniversary and wanted to bring it to a WoW 1.12 private-server client.

The first approach was deliberately small: choose one action slot, watch for its presses, and let one of the game's built-in emotes play when the cooldown allows. Which emote plays is random; the code has no additional activation-probability roll. The button must still perform its original action. The emotes are character expression, not a gameplay advantage.

The current source uses ten built-in emote tokens and a fixed 21-second cooldown. It watches button presses, not confirmed successful casts. The watched slot persists account-wide. There is no graphical settings editor, configurable chance percentage or custom sound package.

Here, I describe the purpose from my own experience here; the precise mechanics are based on the committed Lua. [The development journal](docs/DEVLOG.md) distinguishes what I remember from what the Git history establishes.
