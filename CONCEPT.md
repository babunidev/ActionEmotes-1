# Action Emotes #1 — creative concept (formerly BuxbrewCharge)

**By:** Babuni

## The original experience

Combat in World of Warcraft can express a character's personality beyond damage numbers and ability effects. BuxbrewCharge adds a small, unpredictable flourish when the player presses a personally selected action button. A normal action becomes an opportunity for a shout, a cheer, a charge gesture or an incongruous reaction. The point is comic character presence, not efficiency.

The choice of **one watched action slot** makes the interaction deliberately tied to something the player does. The 21-second interval turns the flourish into a rare event rather than a continuous stream of messages. All ten current choices are built-in emote tokens; no custom animation, sound file, combat rotation or text-generation service is required.

## Boundaries preserved in source

- Trigger: press of the configured action slot, not successful cast detection.
- Outcome: an emote using `DoEmote`; the original action is still invoked.
- Persistence: account-wide watched-slot preference.
- Customization: change the emote table in source or choose a new slot through chat. No in-game emote editor exists.
- Mood: light, dramatic roleplay accents; not mechanical advantage.

## Evidence versus inference

The implementation and project description support this *character-flavor* reading. They do not prove a recorded original conversation, an approved name explanation, or tested client behavior. See [development history](docs/DEVLOG.md) for dated commits and [decision evidence](docs/DECISIONS.md) for facts versus interpretations.
