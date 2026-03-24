# Taiwanese Package (TP) 2.10 — Encoding Mappings

Source: [references/TaiwanesePackage/TP_encoding_mappings.txt](references/TaiwanesePackage/TP_encoding_mappings.txt)
Author: Kiatgak (劉杰岳), Phahng Taiwanese Workshop
Extracted from: Taiwanese210.exe (2005/11/16)

---

## 1. Number Format → Unicode — 112 entries

Converts **Number Format** (tone-digit) notation to Unicode POJ. A base letter is followed by a tone digit: `a2` = á (tone 2), `ou7` = ō͘ (tone 7), `nn` = ⁿ (nasalization).

| Input | Unicode | Hex | Input | Unicode | Hex |
| ----- | ------- | --- | ----- | ------- | --- |
| a2 | á | U+00E1 | A2 | Á | U+00C1 |
| a3 | à | U+00E0 | A3 | À | U+00C0 |
| a5 | â | U+00E2 | A5 | Â | U+00C2 |
| a7 | ā | U+0101 | A7 | Ā | U+0100 |
| a8 | a̍ | U+0061 U+030D | A8 | A̍ | U+0041 U+030D |
| a9 | ă | U+0103 | A9 | Ă | U+0102 |
| e2 | é | U+00E9 | E2 | É | U+00C9 |
| e3 | è | U+00E8 | E3 | È | U+00C8 |
| e5 | ê | U+00EA | E5 | Ê | U+00CA |
| e7 | ē | U+0113 | E7 | Ē | U+0112 |
| e8 | e̍ | U+0065 U+030D | E8 | E̍ | U+0045 U+030D |
| e9 | ĕ | U+0115 | E9 | Ĕ | U+0114 |
| i2 | í | U+00ED | I2 | Í | U+00CD |
| i3 | ì | U+00EC | I3 | Ì | U+00CC |
| i5 | î | U+00EE | I5 | Î | U+00CE |
| i7 | ī | U+012B | I7 | Ī | U+012A |
| i8 | i̍ | U+0069 U+030D | I8 | I̍ | U+0049 U+030D |
| i9 | ĭ | U+012D | I9 | Ĭ | U+012C |
| ii | ṳ | U+1E73 | Ii | Ṳ | U+1E72 |
| ii2 | ṳ́ | U+1E73 U+0301 | Ii2 | Ṳ́ | U+1E72 U+0301 |
| ii3 | ṳ̀ | U+1E73 U+0300 | Ii3 | Ṳ̀ | U+1E72 U+0300 |
| ii5 | ṳ̂ | U+1E73 U+0302 | Ii5 | Ṳ̂ | U+1E72 U+0302 |
| ii7 | ṳ̄ | U+1E73 U+0304 | Ii7 | Ṳ̄ | U+1E72 U+0304 |
| ii8 | ṳ̍ | U+1E73 U+030D | Ii8 | Ṳ̍ | U+1E72 U+030D |
| m2 | ḿ | U+1E3F | M2 | Ḿ | U+1E3E |
| m3 | m̀ | U+006D U+0300 | M3 | M̀ | U+004D U+0300 |
| m5 | m̂ | U+006D U+0302 | M5 | M̂ | U+004D U+0302 |
| m7 | m̄ | U+006D U+0304 | M7 | M̄ | U+004D U+0304 |
| m8 | m̍ | U+006D U+030D | M8 | M̍ | U+004D U+030D |
| m9 | m̆ | U+006D U+0306 | M9 | M̆ | U+004D U+0306 |
| n2 | ń | U+0144 | N2 | Ń | U+0143 |
| n3 | ǹ | U+01F9 | N3 | Ǹ | U+01F8 |
| n5 | n̂ | U+006E U+0302 | N5 | N̂ | U+004E U+0302 |
| n7 | n̄ | U+006E U+0304 | N7 | N̄ | U+004E U+0304 |
| n8 | n̍ | U+006E U+030D | N8 | N̍ | U+004E U+030D |
| n9 | n̆ | U+006E U+0306 | N9 | N̆ | U+004E U+0306 |
| o2 | ó | U+00F3 | O2 | Ó | U+00D3 |
| o3 | ò | U+00F2 | O3 | Ò | U+00D2 |
| o5 | ô | U+00F4 | O5 | Ô | U+00D4 |
| o7 | ō | U+014D | O7 | Ō | U+014C |
| o8 | o̍ | U+006F U+030D | O8 | O̍ | U+004F U+030D |
| o9 | ŏ | U+014F | O9 | Ŏ | U+014E |
| ou | o͘ | U+006F U+0358 | Ou | O͘ | U+004F U+0358 |
| ou2 | ó͘ | U+00F3 U+0358 | Ou2 | Ó͘ | U+00D3 U+0358 |
| ou3 | ò͘ | U+00F2 U+0358 | Ou3 | Ò͘ | U+00D2 U+0358 |
| ou5 | ô͘ | U+00F4 U+0358 | Ou5 | Ô͘ | U+00D4 U+0358 |
| ou7 | ō͘ | U+014D U+0358 | Ou7 | Ō͘ | U+014C U+0358 |
| ou8 | o̍͘ | U+006F U+030D U+0358 | Ou8 | O̍͘ | U+004F U+030D U+0358 |
| ou9 | ŏ͘ | U+014F U+0358 | Ou9 | Ŏ͘ | U+014E U+0358 |
| u2 | ú | U+00FA | U2 | Ú | U+00DA |
| u3 | ù | U+00F9 | U3 | Ù | U+00D9 |
| u5 | û | U+00FB | U5 | Û | U+00DB |
| u7 | ū | U+016B | U7 | Ū | U+016A |
| u8 | u̍ | U+0075 U+030D | U8 | U̍ | U+0055 U+030D |
| u9 | ŭ | U+016D | U9 | Ŭ | U+016C |
| nn | ⁿ | U+207F | N | ⁿ | U+207F |

---

## 2. TP Encoding → Unicode — 63 entries

Converts the **TP Encoding** format to Unicode. Only encodes tones 7/8 for vowels, full m/n syllabic tones, and multi-character digraphs (`ou`/`ii`).

| Input | Unicode | Hex | Input | Unicode | Hex |
| ----- | ------- | --- | ----- | ------- | --- |
| a7 | ā | U+0101 | A7 | Ā | U+0100 |
| a8 | a̍ | U+0061 U+030D | A8 | A̍ | U+0041 U+030D |
| e7 | ē | U+0113 | E7 | Ē | U+0112 |
| e8 | e̍ | U+0065 U+030D | E8 | E̍ | U+0045 U+030D |
| i7 | ī | U+012B | I7 | Ī | U+012A |
| i8 | i̍ | U+0069 U+030D | I8 | I̍ | U+0049 U+030D |
| o7 | ō | U+014D | O7 | Ō | U+014C |
| o8 | o̍ | U+006F U+030D | O8 | O̍ | U+004F U+030D |
| u7 | ū | U+016B | U7 | Ū | U+016A |
| u8 | u̍ | U+0075 U+030D | U8 | U̍ | U+0055 U+030D |
| ou | o͘ | U+006F U+0358 | Ou | O͘ | U+004F U+0358 |
| ou2 | ó͘ | U+00F3 U+0358 | Ou2 | Ó͘ | U+00D3 U+0358 |
| ou3 | ò͘ | U+00F2 U+0358 | Ou3 | Ò͘ | U+00D2 U+0358 |
| ou5 | ô͘ | U+00F4 U+0358 | Ou5 | Ô͘ | U+00D4 U+0358 |
| ou7 | ō͘ | U+014D U+0358 | Ou7 | Ō͘ | U+014C U+0358 |
| ou8 | o̍͘ | U+006F U+030D U+0358 | Ou8 | O̍͘ | U+004F U+030D U+0358 |
| ii | ṳ | U+1E73 | Ii | Ṳ | U+1E72 |
| ii2 | ṳ́ | U+1E73 U+0301 | Ii2 | Ṳ́ | U+1E72 U+0301 |
| ii3 | ṳ̀ | U+1E73 U+0300 | Ii3 | Ṳ̀ | U+1E72 U+0300 |
| ii5 | ṳ̂ | U+1E73 U+0302 | Ii5 | Ṳ̂ | U+1E72 U+0302 |
| ii8 | ṳ̍ | U+1E73 U+030D | Ii8 | Ṳ̍ | U+1E72 U+030D |
| m2 | ḿ | U+1E3F | M2 | Ḿ | U+1E3E |
| m3 | m̀ | U+006D U+0300 | M3 | M̀ | U+004D U+0300 |
| m5 | m̂ | U+006D U+0302 | M5 | M̂ | U+004D U+0302 |
| m7 | m̄ | U+006D U+0304 | M7 | M̄ | U+004D U+0304 |
| m8 | m̍ | U+006D U+030D | M8 | M̍ | U+004D U+030D |
| n2 | ń | U+0144 | N2 | Ń | U+0143 |
| n3 | ǹ | U+01F9 | N3 | Ǹ | U+01F8 |
| n5 | n̂ | U+006E U+0302 | N5 | N̂ | U+004E U+0302 |
| n7 | n̄ | U+006E U+0304 | N7 | N̄ | U+004E U+0304 |
| n8 | n̍ | U+006E U+030D | N8 | N̍ | U+004E U+030D |
| nn | ⁿ | U+207F | | | |

---

## 3. HOTSYS 2000 → Unicode — 96 entries

Converts **HOTSYS 2000** encoding to Unicode. Covers all tones (2/3/5/7/8) for all vowels, nasals, and digraphs.

| Input | Unicode | Hex | Input | Unicode | Hex |
| ----- | ------- | --- | ----- | ------- | --- |
| a2 | á | U+00E1 | A2 | Á | U+00C1 |
| a3 | à | U+00E0 | A3 | À | U+00C0 |
| a5 | â | U+00E2 | A5 | Â | U+00C2 |
| a7 | ā | U+0101 | A7 | Ā | U+0100 |
| a8 | a̍ | U+0061 U+030D | A8 | A̍ | U+0041 U+030D |
| e2 | é | U+00E9 | E2 | É | U+00C9 |
| e3 | è | U+00E8 | E3 | È | U+00C8 |
| e5 | ê | U+00EA | E5 | Ê | U+00CA |
| e7 | ē | U+0113 | E7 | Ē | U+0112 |
| e8 | e̍ | U+0065 U+030D | E8 | E̍ | U+0045 U+030D |
| i2 | í | U+00ED | I2 | Í | U+00CD |
| i3 | ì | U+00EC | I3 | Ì | U+00CC |
| i5 | î | U+00EE | I5 | Î | U+00CE |
| i7 | ī | U+012B | I7 | Ī | U+012A |
| i8 | i̍ | U+0069 U+030D | I8 | I̍ | U+0049 U+030D |
| m2 | ḿ | U+1E3F | M2 | Ḿ | U+1E3E |
| m3 | m̀ | U+006D U+0300 | M3 | M̀ | U+004D U+0300 |
| m5 | m̂ | U+006D U+0302 | M5 | M̂ | U+004D U+0302 |
| m7 | m̄ | U+006D U+0304 | M7 | M̄ | U+004D U+0304 |
| m8 | m̍ | U+006D U+030D | M8 | M̍ | U+004D U+030D |
| n2 | ń | U+0144 | N2 | Ń | U+0143 |
| n3 | ǹ | U+01F9 | N3 | Ǹ | U+01F8 |
| n5 | n̂ | U+006E U+0302 | N5 | N̂ | U+004E U+0302 |
| n7 | n̄ | U+006E U+0304 | N7 | N̄ | U+004E U+0304 |
| n8 | n̍ | U+006E U+030D | N8 | N̍ | U+004E U+030D |
| o2 | ó | U+00F3 | O2 | Ó | U+00D3 |
| o3 | ò | U+00F2 | O3 | Ò | U+00D2 |
| o5 | ô | U+00F4 | O5 | Ô | U+00D4 |
| o7 | ō | U+014D | O7 | Ō | U+014C |
| o8 | o̍ | U+006F U+030D | O8 | O̍ | U+004F U+030D |
| ou | o͘ | U+006F U+0358 | Ou | O͘ | U+004F U+0358 |
| ou2 | ó͘ | U+00F3 U+0358 | Ou2 | Ó͘ | U+00D3 U+0358 |
| ou3 | ò͘ | U+00F2 U+0358 | Ou3 | Ò͘ | U+00D2 U+0358 |
| ou5 | ô͘ | U+00F4 U+0358 | Ou5 | Ô͘ | U+00D4 U+0358 |
| ou7 | ō͘ | U+014D U+0358 | Ou7 | Ō͘ | U+014C U+0358 |
| ou8 | o̍͘ | U+006F U+030D U+0358 | Ou8 | O̍͘ | U+004F U+030D U+0358 |
| u2 | ú | U+00FA | U2 | Ú | U+00DA |
| u3 | ù | U+00F9 | U3 | Ù | U+00D9 |
| u5 | û | U+00FB | U5 | Û | U+00DB |
| u7 | ū | U+016B | U7 | Ū | U+016A |
| u8 | u̍ | U+0075 U+030D | U8 | U̍ | U+0055 U+030D |
| ii | ṳ | U+1E73 | Ii | Ṳ | U+1E72 |
| ii2 | ṳ́ | U+1E73 U+0301 | Ii2 | Ṳ́ | U+1E72 U+0301 |
| ii3 | ṳ̀ | U+1E73 U+0300 | Ii3 | Ṳ̀ | U+1E72 U+0300 |
| ii5 | ṳ̂ | U+1E73 U+0302 | Ii5 | Ṳ̂ | U+1E72 U+0302 |
| ii8 | ṳ̍ | U+1E73 U+030D | Ii8 | Ṳ̍ | U+1E72 U+030D |
| nn | ⁿ | U+207F | | | |
| o2 | ó | U+00F3 | m7 | m̄ | U+006D U+0304 |

---

## 4. Number Format → TP Encoding (Font Hack) — 84 entries

Maps **Number Format** to the **TP font-hack** characters used in `tws21.ttf` (Taiwanese Serif) font.

| Input | Font Hack | Hex | Input | Font Hack | Hex |
| ----- | --------- | --- | ----- | --------- | --- |
| a2 | á | U+00E1 | A2 | Á | U+00C1 |
| a3 | à | U+00E0 | A3 | À | U+00C0 |
| a5 | â | U+00E2 | A5 | Â | U+00C2 |
| a7 | ä | U+00E4 | A7 | Ä | U+00C4 |
| a8 | ã | U+00E3 | A8 | Ã | U+00C3 |
| e2 | é | U+00E9 | E2 | É | U+00C9 |
| e3 | è | U+00E8 | E3 | È | U+00C8 |
| e5 | ê | U+00EA | E5 | Ê | U+00CA |
| e7 | ë | U+00EB | E7 | Ë | U+00CB |
| e8 | ç | U+00E7 | E8 | Ç | U+00C7 |
| i2 | í | U+00ED | I2 | Í | U+00CD |
| i3 | ì | U+00EC | I3 | Ì | U+00CC |
| i5 | î | U+00EE | I5 | Î | U+00CE |
| i7 | „ | U+201E | I7 | ‚ | U+201A |
| i8 | … | U+2026 | I8 | ƒ | U+0192 |
| m2 | • | U+2022 | M2 | ˆ | U+02C6 |
| m3 | – | U+2013 | M3 | ‰ | U+2030 |
| m5 | — | U+2014 | M5 | Š | U+0160 |
| m7 | ˜ | U+02DC | M7 | ‹ | U+2039 |
| m8 | ™ | U+2122 | M8 | Œ | U+0152 |
| n2 | ¡ | U+00A1 | N2 | š | U+0161 |
| n3 | ¢ | U+00A2 | N3 | › | U+203A |
| n5 | £ | U+00A3 | N5 | œ | U+0153 |
| n7 | ¤ | U+00A4 | N7 | Ÿ | U+0178 |
| n8 | ñ | U+00F1 | N8 | Ñ | U+00D1 |
| o2 | ó | U+00F3 | O2 | Ó | U+00D3 |
| o3 | ò | U+00F2 | O3 | Ò | U+00D2 |
| o5 | ô | U+00F4 | O5 | Ô | U+00D4 |
| o7 | ö | U+00F6 | O7 | Ö | U+00D6 |
| o8 | õ | U+00F5 | O8 | Õ | U+00D5 |
| ou1 | ¬ | U+00AC | Ou1 | ¥ | U+00A5 |
| ou2 | ¯ | U+00AF | Ou2 | ¦ | U+00A6 |
| ou3 | ± | U+00B1 | Ou3 | § | U+00A7 |
| ou5 | ² | U+00B2 | Ou5 | ¨ | U+00A8 |
| ou7 | ³ | U+00B3 | Ou7 | ª | U+00AA |
| ou8 | ´ | U+00B4 | Ou8 | « | U+00AB |
| u2 | ú | U+00FA | U2 | Ú | U+00DA |
| u3 | ù | U+00F9 | U3 | Ù | U+00D9 |
| u5 | û | U+00FB | U5 | Û | U+00DB |
| u7 | ü | U+00FC | U7 | Ü | U+00DC |
| u8 | ý | U+00FD | U8 | Ý | U+00DD |
| nn | ° | U+00B0 | N | ° | U+00B0 |

---

## 5. Unicode → Number Format (Reverse) — 204 entries

The **reverse table**: converts Unicode POJ characters back to Number Format strings. Handles both precomposed (e.g., `á` U+00E1) and decomposed (e.g., `a` + U+0301) Unicode forms.

| Unicode | Hex | Number | Unicode | Hex | Number |
| ------- | --- | ------ | ------- | --- | ------ |
| a | U+0061 | a | A | U+0041 | A |
| á | U+00E1 | a2 | Á | U+00C1 | A2 |
| á | U+0061 U+0301 | a2 | Á | U+0041 U+0301 | A2 |
| à | U+00E0 | a3 | À | U+00C0 | A3 |
| à | U+0061 U+0300 | a3 | À | U+0041 U+0300 | A3 |
| â | U+00E2 | a5 | Â | U+00C2 | A5 |
| â | U+0061 U+0302 | a5 | Â | U+0041 U+0302 | A5 |
| ā | U+0101 | a7 | Ā | U+0100 | A7 |
| ā | U+0061 U+0304 | a7 | Ā | U+0041 U+0304 | A7 |
| a̍ | U+0061 U+030D | a8 | A̍ | U+0041 U+030D | A8 |
| ă | U+0103 | a9 | Ă | U+0102 | A9 |
| ă | U+0061 U+0306 | a9 | Ă | U+0041 U+0306 | A9 |
| e | U+0065 | e | E | U+0045 | E |
| é | U+00E9 | e2 | É | U+00C9 | E2 |
| é | U+0065 U+0301 | e2 | É | U+0045 U+0301 | E2 |
| è | U+00E8 | e3 | È | U+00C8 | E3 |
| è | U+0065 U+0300 | e3 | È | U+0045 U+0300 | E3 |
| ê | U+00EA | e5 | Ê | U+00CA | E5 |
| ê | U+0065 U+0302 | e5 | Ê | U+0045 U+0302 | E5 |
| ē | U+0113 | e7 | Ē | U+0112 | E7 |
| ē | U+0065 U+0304 | e7 | Ē | U+0045 U+0304 | E7 |
| e̍ | U+0065 U+030D | e8 | E̍ | U+0045 U+030D | E8 |
| ĕ | U+0115 | e9 | Ĕ | U+0114 | E9 |
| ĕ | U+0065 U+0306 | e9 | Ĕ | U+0045 U+0306 | E9 |
| i | U+0069 | i | I | U+0049 | I |
| í | U+00ED | i2 | Í | U+00CD | I2 |
| í | U+0069 U+0301 | i2 | Í | U+0049 U+0301 | I2 |
| ì | U+00EC | i3 | Ì | U+00CC | I3 |
| ì | U+0069 U+0300 | i3 | Ì | U+0049 U+0300 | I3 |
| î | U+00EE | i5 | Î | U+00CE | I5 |
| î | U+0069 U+0302 | i5 | Î | U+0049 U+0302 | I5 |
| ī | U+012B | i7 | Ī | U+012A | I7 |
| ī | U+0069 U+0304 | i7 | Ī | U+0049 U+0304 | I7 |
| i̍ | U+0069 U+030D | i8 | I̍ | U+0049 U+030D | I8 |
| ĭ | U+012D | i9 | Ĭ | U+012C | I9 |
| ĭ | U+0069 U+0306 | i9 | Ĭ | U+0049 U+0306 | I9 |
| ṳ | U+1E73 | ii | Ṳ | U+1E72 | Ii |
| ṳ́ | U+1E73 U+0301 | ii2 | Ṳ́ | U+1E72 U+0301 | Ii2 |
| ṳ̀ | U+1E73 U+0300 | ii3 | Ṳ̀ | U+1E72 U+0300 | Ii3 |
| ṳ̂ | U+1E73 U+0302 | ii5 | Ṳ̂ | U+1E72 U+0302 | Ii5 |
| ṳ̄ | U+1E73 U+0304 | ii7 | Ṳ̄ | U+1E72 U+0304 | Ii7 |
| ṳ̍ | U+1E73 U+030D | ii8 | Ṳ̍ | U+1E72 U+030D | Ii8 |
| m | U+006D | m | M | U+004D | M |
| ḿ | U+1E3F | m2 | Ḿ | U+1E3E | M2 |
| ḿ | U+006D U+0301 | m2 | Ḿ | U+004D U+0301 | M2 |
| m̀ | U+006D U+0300 | m3 | M̀ | U+004D U+0300 | M3 |
| m̂ | U+006D U+0302 | m5 | M̂ | U+004D U+0302 | M5 |
| m̄ | U+006D U+0304 | m7 | M̄ | U+004D U+0304 | M7 |
| m̍ | U+006D U+030D | m8 | M̍ | U+004D U+030D | M8 |
| m̆ | U+006D U+0306 | m9 | M̆ | U+004D U+0306 | M9 |
| n | U+006E | n | N | U+004E | N |
| ń | U+0144 | n2 | Ń | U+0143 | N2 |
| ń | U+006E U+0301 | n2 | Ń | U+004E U+0301 | N2 |
| ǹ | U+01F9 | n3 | Ǹ | U+01F8 | N3 |
| ǹ | U+006E U+0300 | n3 | Ǹ | U+004E U+0300 | N3 |
| n̂ | U+006E U+0302 | n5 | N̂ | U+004E U+0302 | N5 |
| n̄ | U+006E U+0304 | n7 | N̄ | U+004E U+0304 | N7 |
| n̍ | U+006E U+030D | n8 | N̍ | U+004E U+030D | N8 |
| n̆ | U+006E U+0306 | n9 | N̆ | U+004E U+0306 | N9 |
| o | U+006F | o | O | U+004F | O |
| ó | U+00F3 | o2 | Ó | U+00D3 | O2 |
| ó | U+006F U+0301 | o2 | Ó | U+004F U+0301 | O2 |
| ò | U+00F2 | o3 | Ò | U+00D2 | O3 |
| ò | U+006F U+0300 | o3 | Ò | U+004F U+0300 | O3 |
| ô | U+00F4 | o5 | Ô | U+00D4 | O5 |
| ô | U+006F U+0302 | o5 | Ô | U+004F U+0302 | O5 |
| ō | U+014D | o7 | Ō | U+014C | O7 |
| ō | U+006F U+0304 | o7 | Ō | U+004F U+0304 | O7 |
| o̍ | U+006F U+030D | o8 | O̍ | U+004F U+030D | O8 |
| ŏ | U+014F | o9 | Ŏ | U+014E | O9 |
| ŏ | U+006F U+0306 | o9 | Ŏ | U+004F U+0306 | O9 |
| o͘ | U+006F U+0358 | ou | O͘ | U+004F U+0358 | Ou |
| ó͘ | U+00F3 U+0358 | ou2 | Ó͘ | U+00D3 U+0358 | Ou2 |
| ó͘ | U+006F U+0301 U+0358 | ou2 | Ó͘ | U+004F U+0301 U+0358 | Ou2 |
| ó͘ | U+006F U+0358 U+0301 | ou2 | Ó͘ | U+004F U+0358 U+0301 | Ou2 |
| ò͘ | U+00F2 U+0358 | ou3 | Ò͘ | U+00D2 U+0358 | Ou3 |
| ò͘ | U+006F U+0300 U+0358 | ou3 | Ò͘ | U+004F U+0300 U+0358 | Ou3 |
| ò͘ | U+006F U+0358 U+0300 | ou3 | Ò͘ | U+004F U+0358 U+0300 | Ou3 |
| ô͘ | U+00F4 U+0358 | ou5 | Ô͘ | U+00D4 U+0358 | Ou5 |
| ô͘ | U+006F U+0302 U+0358 | ou5 | Ô͘ | U+004F U+0302 U+0358 | Ou5 |
| ô͘ | U+006F U+0358 U+0302 | ou5 | Ô͘ | U+004F U+0358 U+0302 | Ou5 |
| ō͘ | U+014D U+0358 | ou7 | Ō͘ | U+014C U+0358 | Ou7 |
| ō͘ | U+006F U+0304 U+0358 | ou7 | Ō͘ | U+004F U+0304 U+0358 | Ou7 |
| ō͘ | U+006F U+0358 U+0304 | ou7 | Ō͘ | U+004F U+0358 U+0304 | Ou7 |
| o̍͘ | U+006F U+030D U+0358 | ou8 | O̍͘ | U+004F U+030D U+0358 | Ou8 |
| o̍͘ | U+006F U+0358 U+030D | ou8 | O̍͘ | U+004F U+0358 U+030D | Ou8 |
| ŏ͘ | U+014F U+0358 | ou9 | Ŏ͘ | U+014E U+0358 | Ou9 |
| ŏ͘ | U+006F U+0306 U+0358 | ou9 | Ŏ͘ | U+004F U+0306 U+0358 | Ou9 |
| ŏ͘ | U+006F U+0358 U+0306 | ou9 | Ŏ͘ | U+004F U+0358 U+0306 | Ou9 |
| u | U+0075 | u | U | U+0055 | U |
| ú | U+00FA | u2 | Ú | U+00DA | U2 |
| ú | U+0075 U+0301 | u2 | Ú | U+0055 U+0301 | U2 |
| ù | U+00F9 | u3 | Ù | U+00D9 | U3 |
| ù | U+0075 U+0300 | u3 | Ù | U+0055 U+0300 | U3 |
| û | U+00FB | u5 | Û | U+00DB | U5 |
| û | U+0075 U+0302 | u5 | Û | U+0055 U+0302 | U5 |
| ū | U+016B | u7 | Ū | U+016A | U7 |
| ū | U+0075 U+0304 | u7 | Ū | U+0055 U+0304 | U7 |
| u̍ | U+0075 U+030D | u8 | U̍ | U+0055 U+030D | U8 |
| ŭ | U+016D | u9 | Ŭ | U+016C | U9 |
| ŭ | U+0075 U+0306 | u9 | Ŭ | U+0055 U+0306 | U9 |
| ⁿ | U+207F | nn/N | | | |

---

## 6. Keyboard Layout — kbdtwu.dll Input Method

### Tone Keys (Direct Input)

| Key | Output | Hex | Description |
| --- | ------ | --- | ----------- |
| ' | ́ | U+0301 | Tone 2 (rising) |
| ` | ̀ | U+0300 | Tone 3 (low falling) |
| Shift+6 | ̂ | U+0302 | Tone 5 (rising-falling) |
| = | ̄ | U+0304 | Tone 7 (mid level) |
| Shift+\\ | ̍ | U+030D | Tone 8 (high checked) |
| Shift+9 | ̆ | U+0306 | Tone 9 |

### Special Character Keys

| Key | Output | Hex | Description |
| --- | ------ | --- | ----------- |
| Q | ͘ | U+0358 | o͘ (POJ nasal dot) |
| X | ⁿ | U+207F | Nasalization marker |
| Z | ṳ/Ṳ | U+1E73/U+1E72 | Hakka vowel |
| W | ö/Ö | U+00F6/U+00D6 | Hakka vowel |
| AltGr+A | å/Å | U+00E5/U+00C5 | a with ring above |
| AltGr+D | đ/Đ | U+0111/U+0110 | d with stroke (indigenous) |
| AltGr+I | ï/Ï | U+00EF/U+00CF | i with diaeresis |
| AltGr+U | ů/Ů | U+016F/U+016E | u with ring above |
| AltGr+N | ⁿ | U+207F | Superscript n (nasalization) |
| AltGr+, | " | U+201C | Smart quote left |
| AltGr+. | " | U+201D | Smart quote right |

---

## 7. Fonts Included

| Font Name | File | Type | Glyphs | Range |
| --------- | ---- | ---- | ------ | ----- |
| Taiwanese Serif | tws21.ttf | TrueType | 315 | Latin + POJ diacritics + PUA |
| Taiwanese Fixed | twf21.ttf | TrueType | 276 | Latin + POJ diacritics |
| EUDC Kaishu (楷書) | TWKHAI.TTE | EUDC | 6219 | U+E000-U+F848 (Big5 FA40-FEFE) |
| EUDC Mingtai (明體) | TWBENG.TTE | EUDC | 6219 | U+E000-U+F848 (Big5 FA40-FEFE) |

---

## 8. Private Use Area (PUA) Characters in Taiwanese Serif Font

| Unicode | GlyphID | Note |
| ------- | ------- | ---- |
| U+E003 | 168 | TP-specific glyph (precomposed POJ character) |
| U+E004 | 169 | TP-specific glyph (precomposed POJ character) |
| U+E005 | 170 | TP-specific glyph (precomposed POJ character) |
| U+E006 | 171 | TP-specific glyph (precomposed POJ character) |
| U+E007 | 176 | TP-specific glyph (precomposed POJ character) |
| U+E008 | 177 | TP-specific glyph (precomposed POJ character) |
| U+E009 | 178 | TP-specific glyph (precomposed POJ character) |
| U+E00A | 179 | TP-specific glyph (precomposed POJ character) |
| U+E00B | 180 | TP-specific glyph (precomposed POJ character) |
| U+E00C | 181 | TP-specific glyph (precomposed POJ character) |
| U+E00D | 182 | TP-specific glyph (precomposed POJ character) |
| U+E00E | 183 | TP-specific glyph (precomposed POJ character) |
| U+E00F | 215 | TP-specific glyph (precomposed POJ character) |
| U+E010 | 216 | TP-specific glyph (precomposed POJ character) |
| U+E011 | 186 | TP-specific glyph (precomposed POJ character) |
| U+E012 | 187 | TP-specific glyph (precomposed POJ character) |
| U+E013 | 188 | TP-specific glyph (precomposed POJ character) |
| U+E014 | 189 | TP-specific glyph (precomposed POJ character) |
| U+E015 | 190 | TP-specific glyph (precomposed POJ character) |
| U+E016 | 191 | TP-specific glyph (precomposed POJ character) |
| U+E017 | 192 | TP-specific glyph (precomposed POJ character) |
| U+E018 | 193 | TP-specific glyph (precomposed POJ character) |
| U+E019 | 198 | TP-specific glyph (precomposed POJ character) |
| U+E01A | 200 | TP-specific glyph (precomposed POJ character) |
| U+E01B | 201 | TP-specific glyph (precomposed POJ character) |
| U+E01C | 204 | TP-specific glyph (precomposed POJ character) |
| U+E01D | 205 | TP-specific glyph (precomposed POJ character) |
| U+E01E | 206 | TP-specific glyph (precomposed POJ character) |
| U+E01F | 207 | TP-specific glyph (precomposed POJ character) |
| U+E020 | 208 | TP-specific glyph (precomposed POJ character) |
| U+E021 | 209 | TP-specific glyph (precomposed POJ character) |
| U+E022 | 210 | TP-specific glyph (precomposed POJ character) |
| U+E023 | 211 | TP-specific glyph (precomposed POJ character) |
| U+E024 | 218 | TP-specific glyph (precomposed POJ character) |
| U+E025 | 219 | TP-specific glyph (precomposed POJ character) |
| U+E027 | 220 | TP-specific glyph (precomposed POJ character) |
| U+E028 | 223 | TP-specific glyph (precomposed POJ character) |
| U+E029 | 217 | TP-specific glyph (precomposed POJ character) |
| U+E02A | 224 | TP-specific glyph (precomposed POJ character) |
| U+E0D6 | 163 | TP-specific glyph (precomposed POJ character) |
| U+E0D7 | 164 | TP-specific glyph (precomposed POJ character) |
