-- Mock-based smoke test for Vanilla 1.12's implicit event global.
-- Runs under Lua 5.1 in CI; it is not a replacement for an in-game test.

local messages = {}
local emotes = {}
local actionCalls = {}
local frame = {registered = {}}

function frame:RegisterEvent(name)
  self.registered[name] = true
end

function frame:SetScript(script, callback)
  assert(script == "OnEvent")
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

BuxbrewChargeDB = {slot = 7}
SlashCmdList = {}

GetTime = function()
  return 100
end

UseAction = function(slot, checkCursor, onSelf)
  table.insert(actionCalls, {slot, checkCursor, onSelf})
  return "action-forwarded"
end

DoEmote = function(token)
  table.insert(emotes, token)
end

-- Simulate WoW's unavailable randomseed; preserve the random chooser.
math.randomseed = nil
math.random = function(low, high)
  assert(low == 1 and high == 10)
  return 1
end

dofile("BuxbrewCharge/BuxbrewCharge.lua")

assert(frame.registered["VARIABLES_LOADED"])
assert(frame.registered["PLAYER_ENTERING_WORLD"])
assert(frame.registered["PLAYER_LOGOUT"])
assert(not frame.registered["PLAYER_LOGIN"])
assert(type(frame.onEvent) == "function")

-- Vanilla passes the event name implicitly, not as a callback argument.
event = "VARIABLES_LOADED"
frame.onEvent()
assert(messages[#messages]:find("loaded slot 7", 1, true))

assert(UseAction(7, true, false) == "action-forwarded")
assert(#actionCalls == 1 and actionCalls[1][1] == 7)
assert(#emotes == 1 and emotes[1] == "CHARGE")

-- Command changes should save immediately, and logout must save again.
SlashCmdList["BUXBREWCHARGE"]("slot 9")
assert(BuxbrewChargeDB.slot == 9)
BuxbrewChargeDB.slot = nil
event = "PLAYER_LOGOUT"
frame.onEvent()
assert(BuxbrewChargeDB.slot == 9)

event = "PLAYER_ENTERING_WORLD"
frame.onEvent()
assert(messages[#messages]:find("loaded slot 9", 1, true))

print("Vanilla 1.12 event simulation: PASS")
