# Action Emotes #1 — my development journal

**By Babuni**  
**Historical account:** My recollections recorded October 31, 2026, alongside repository and commit evidence.

## An idea before I knew how to make an addon

I had already been playing with character expression in WoW Classic Anniversary, using WeakAuras for my orc **Madaxe Mokaya**. I liked the idea that a character could react to what I was doing, rather than simply carry out a command without personality.

When I started playing my warrior **Buxbrew** on an unnamed private server, I found myself wanting the same feeling in the older **World of Warcraft 1.12** client. The tools and possibilities were different there. I decided to try writing a small addon.

## August 2025 — my first addon

I didn't have an integrated AI coding assistant editing files for me. I was working on my own computer, with a normal ChatGPT conversation open. I described what I wanted, asked my AI assistant about the Lua code, copied the results myself, created the addon folders and files, and loaded everything into the game.

Then I tested it. If something didn't work—or if I had another idea—I went back to the chat, tried to work out what to change, edited the files again and returned to the game. It wasn't always easy to understand what was possible or why a change behaved the way it did. But watching the character finally perform those little responses was genuinely satisfying. Each small successful experiment gave me another reason to keep exploring.

I originally called it **BuxbrewCharge**, after the warrior and the ability that helped define its identity. The actual addon was more general: it watched one action slot, not just Charge. Looking back, **Action Emotes #1** is a clearer name, and it identifies this as the beginning of a series of related experiments.

The GitHub repository was created on **August 18, 2025**. The earliest manifest and Lua commits include `8bd4a0f` and `e88f139`. A related conversation dated August 18 confirms the BuxbrewCharge name and its connection to Buxbrew. I have not recovered the complete original code-building chat, so I cannot reliably retell each individual debugging exchange.

## What I made

I built a one-slot emote trigger that passes the actual action through. In the current source, `UseAction` is wrapped, the watched slot is stored in saved variables, and ten built-in emotes are available. The timer is a fixed **21 seconds**. I valued its simplicity: once I knew the slot, I could see it work in the game.

Those specifics describe the committed source, not a fresh live test performed while writing this account.

## Later changes and retrospective documentation

The Git history shows Lua revisions on **November 1, 2025** (`de0c85d`) and **January 10, 2026** (`3ff0fcc`). Their generic commit titles do not say what I intended with each change. A **September 18, 2026** commit (`41c5b32`) adjusted compatibility/provider-neutral wording.

In an AI-assisted documentation review on **October 26, 2026**, I had the repository examined and its documentation expanded. That review identified an unresolved possible installation issue: the manifest is named `BuxbreCharge.toc` rather than `BuxbrewCharge.toc`. No runtime change or game test took place.

On **October 31, 2026**, I told my AI assistant the fuller history of how I started, set the naming direction **Action Emotes #1**, and asked that the original private server not be named. The GitHub repository was later renamed to `ActionEmotes-1`; the installed addon's internal names remain historical.

I also changed how I wanted the story told. These projects are my experiences, decisions and experiments. AI helped me write code and later assemble the documentation, but the story should be told from where I stood, not written about me from outside. This journal is a first-person reconstruction based on my account, not a recovered transcript of every original conversation.

## What remains uncertain

I have not yet verified the present committed addon in a running client, resolved the manifest discrepancy, or compared every later Action Emotes variant and its client version. I won't turn those open questions into claims of completed work.
