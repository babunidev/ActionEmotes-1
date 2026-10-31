"""Static checks for the installable World of Warcraft 1.12 addon folder."""

from pathlib import Path
import unittest


ROOT = Path(__file__).resolve().parents[1]
ADDON = ROOT / "BuxbrewCharge"
TOC = ADDON / "BuxbrewCharge.toc"
LUA = ADDON / "BuxbrewCharge.lua"


class PackageLayoutTests(unittest.TestCase):
    def test_installable_folder_contains_expected_files(self):
        self.assertTrue(ADDON.is_dir())
        self.assertEqual(
            {p.name for p in ADDON.iterdir() if p.is_file()},
            {"BuxbrewCharge.toc", "BuxbrewCharge.lua"},
        )

    def test_manifest_matches_folder_and_lua(self):
        self.assertEqual(ADDON.name + ".toc", TOC.name)
        lines = TOC.read_text(encoding="utf-8").splitlines()
        references = [
            line.strip()
            for line in lines
            if line.strip() and not line.lstrip().startswith("#")
        ]
        self.assertEqual(references, ["BuxbrewCharge.lua"])
        self.assertTrue(LUA.is_file())
        self.assertIn("## Interface: 11200", lines)
        self.assertIn("## SavedVariables: BuxbrewChargeDB", lines)

    def test_no_legacy_root_copy_or_misspelled_manifest(self):
        for unexpected in (
            ROOT / "BuxbreCharge.toc",
            ROOT / "BuxbrewCharge.lua",
            ADDON / "BuxbreCharge.toc",
        ):
            self.assertFalse(unexpected.exists(), str(unexpected))


if __name__ == "__main__":
    unittest.main()
