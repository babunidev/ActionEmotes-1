# BuxbrewCharge — decisions, evidence and open questions

**Author:** Babuni.dev

| Source-observed choice | Supporting evidence | Historical status |
| --- | --- | --- |
| Use a button press rather than confirmed spell execution | Global `UseAction` hook | Implemented approach; original approval discussion unavailable |
| Keep reactions occasional | `EMOTE_COOLDOWN = 21` | Source-observed, no rationale recorded for exactly 21 |
| Use built-in emotes | Ten `DoEmote` tokens | Source-observed |
| Store one slot across characters | `BuxbrewChargeDB.slot`; `SavedVariables` | Source-observed |
| Avoid a full configuration UI | Only chat commands are present | Implementation fact, not proof of a deliberate rejection |

## Unresolved

The misspelled TOC name, client-side emote availability and addon coexistence need verification. No retrospective “we tried X” narrative is justified without commit diff, notes or conversation evidence.

## Decision record for this review

On 2026-10-26, AI documentation expanded the public record without modifying runtime logic; that is **an implementation fact of documentation**, not a newly approved gameplay decision.
