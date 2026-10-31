-- Mock-only regression test for Turtle WoW / Octo WoW-compatible Lua APIs.
-- Runs under Lua 5.1 in CI; target clients use the older Lua 5.0 API.

local messages, emotes, actionCalls = {}, {}, {}
local currentTime, choice = 0, 2
local frame = {registered = {}}

function frame:RegisterEvent(name)
  self.registered[name] = true
end

function frame:SetScript(name, callback)
  assert(name == "OnEvent")
  self.onEvent = callback
end

CreateFrame = function(kind)
  assert(kind == "Frame")
  return frame
end

DEFAULT_CHAT_FRAME = {
  AddMessage = function(_, message)
    table.insert(messages, message)
  end,
}

BuxbrewChargeDB = {slot = 5}
SlashCmdList = {}

GetTime = function()
  return currentTime
end

UseAction = function(slot, checkCursor, onSelf)
  table.insert(actionCalls, {slot, checkCursor, onSelf})
  return "action-forwarded"
end

DoEmote = function(token)
  table.insert(emotes, token)
end

math.randomseed = nil
math.random = function(low, high)
  assert(low == 1 and high == 10)
  return choice
end

dofile("BuxbrewCharge/BuxbrewCharge.lua")
local command = SlashCmdList["BUXBREWCHARGE"]
assert(type(command) == "function")
local function lastMessageContains(part)
  assert(string.find(messages[#messages], part, 1, true), messages[#messages])
end

-- No startup wait, even at zero seconds client uptime.
command("timer")
lastMessageContains("time left: 0.0s")
assert(UseAction(5, 0, 0) == "action-forwarded")
assert(#emotes == 1 and emotes[1] == "ATTACKMYTARGET")
assert(#actionCalls == 1 and actionCalls[1][1] == 5)

-- Cooldown starts after first emote and remains 21 seconds.
command("timer")
lastMessageContains("time left: 21.0s")
currentTime = 20.5
UseAction(5, 0, 0)
assert(#emotes == 1 and #actionCalls == 2)
command("timer")
lastMessageContains("time left: 0.5s")
currentTime = 21
choice = 1
assert(UseAction(5, 0, 0) == "action-forwarded")
assert(#emotes == 2 and emotes[2] == "CHARGE")
command("timer")
lastMessageContains("time left: 21.0s")
currentTime = 42
command("emote")
assert(#emotes == 3)
command("timer")
lastMessageContains("time left: 21.0s")

-- Valid endpoints and trailing whitespace.
command("slot 1")
assert(BuxbrewChargeDB.slot == 1)
command("slot 120   ")
assert(BuxbrewChargeDB.slot == 120)

-- Invalid inputs must not overwrite the previous slot.
local badInputs = {
  "slot", "slot 0", "slot 121", "slot -1", "slot 1.5",
  "slot 1e2", "slot foo", "slot 2 3", "slot 120.0",
}
for _, input in ipairs(badInputs) do
  command(input)
  assert(BuxbrewChargeDB.slot == 120, input)
  lastMessageContains("1-120")
end

command("slot 005")
assert(BuxbrewChargeDB.slot == 5)
command("slot 120")
assert(BuxbrewChargeDB.slot == 120)
currentTime = 63
UseAction(5, 0, 0)
assert(#emotes == 3) -- no longer watched
UseAction(120, 0, 0)
assert(#emotes == 4)
assert(#actionCalls == 5)
command("reset")
assert(BuxbrewChargeDB.slot == nil)

print("Emote token, action slot and first-use cooldown simulation: PASS")
