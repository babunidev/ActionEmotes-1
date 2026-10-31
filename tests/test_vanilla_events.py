"""Source-level regression checks for the WoW 1.12 event contract."""

from pathlib import Path
import re
import unittest

LUA = (Path(__file__).resolve().parents[1] / "BuxbrewCharge" / "BuxbrewCharge.lua").read_text(encoding="utf-8")


class VanillaEventContractTests(unittest.TestCase):
    def test_callback_does_not_shadow_implicit_event(self):
        self.assertRegex(LUA, r'f:SetScript\("OnEvent",\s*function\(\s*\)')
        self.assertIn('if event == "VARIABLES_LOADED" or event == "PLAYER_ENTERING_WORLD" then', LUA)
        self.assertIn('elseif event == "PLAYER_LOGOUT" then', LUA)

    def test_obsolete_seeding_and_login_handler_are_absent(self):
        self.assertNotRegex(LUA, r"(?<![A-Za-z0-9_])math\.randomseed\s*\(")
        self.assertNotIn('f:RegisterEvent("PLAYER_LOGIN")', LUA)
        self.assertIn("return t[math.random(1, n)]", LUA)


if __name__ == "__main__":
    unittest.main()
