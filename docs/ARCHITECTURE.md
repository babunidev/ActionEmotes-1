# BuxbrewCharge — architecture snapshot

**Author:** Babuni.dev

## File inventory

`BuxbrewCharge.lua`, `BuxbreCharge.toc`, `README.md`, `LICENSE`

## Observed implementation

`BuxbrewCharge.lua` hooks `UseAction`, draws from `DoEmote` tokens, retains an account-wide slot setting in `BuxbrewChargeDB`, and uses a 21-second emote cooldown. `BuxbreCharge.toc` declares the add-on and saved variables.

## Verification boundary

This description comes from reading source and metadata; it does not establish successful operation in a live game client.
