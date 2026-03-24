# KonvertLegacyPOJ

A Kotlin Multiplatform library for converting between legacy Taiwanese Pe̍h-ōe-jī (POJ) encodings and modern Unicode.

Scope: **Holo (Taiwanese Hokkien) only**. Hakka (`ii`/`II`/`ṳ`/`Ṳ`) entries are excluded.

## Platforms

| Target | Status |
| ------ | ------ |
| JVM | ✅ |
| JS (Browser / Node.js) | ✅ |
| macOS (x64 / arm64) | ✅ |
| iOS (x64 / arm64 / simulator) | ✅ |
| Linux (x64) | ✅ |

## Usage

```kotlin
import taibun.kesimi.poj.KonvertLegacyPOJ

// Number Format → Unicode
KonvertLegacyPOJ.convertLegacyNumberFormatToUnicode("a2")       // → "á"
KonvertLegacyPOJ.convertLegacyNumberFormatToUnicode("ou3")      // → "ò͘"

// TP Encoding → Unicode (tones 7/8 + ou/m/n digraphs only)
KonvertLegacyPOJ.convertLegacyTpEncodingToUnicode("a7")         // → "ā"
KonvertLegacyPOJ.convertLegacyTpEncodingToUnicode("ou")         // → "o͘"

// HOTSYS 2000 Number Format → Unicode
KonvertLegacyPOJ.convertLegacyHotsys2000ToUnicode("OU2")        // → "Ò͘"

// Unicode → Number Format (reverse)
KonvertLegacyPOJ.convertUnicodeToLegacyNumberFormat("á")        // → "a2"
KonvertLegacyPOJ.convertUnicodeToLegacyNumberFormat("ò͘")       // → "ou3"

// TP Font Hack (tws21.ttf) → Unicode
KonvertLegacyPOJ.convertLegacyTpFontHackToUnicode("ä")            // → "ā"
KonvertLegacyPOJ.convertLegacyTpFontHackToUnicode("²")            // → "ô͘"

// HOTSYS Font Hack → Unicode
KonvertLegacyPOJ.convertLegacyHotsysFontHackToUnicode("¡")      // → "á"
KonvertLegacyPOJ.convertLegacyHotsysFontHackToUnicode("¬")      // → "Ò͘"

// TP POJ Format → Unicode
KonvertLegacyPOJ.convertLegacyTpPojToUnicode("a2")              // → "á"
KonvertLegacyPOJ.convertLegacyTpPojToUnicode("ou3")             // → "ò͘"

// HOTSYS POJ Format → Unicode (OU2/OU3 tone swap for nasal O)
KonvertLegacyPOJ.convertLegacyHotsysPojToUnicode("OU2")         // → "Ò͘"
KonvertLegacyPOJ.convertLegacyHotsysPojToUnicode("OU3")         // → "Ó͘"

// CTS Tai-lo → Unicode
KonvertLegacyPOJ.convertCtsTaiLoToUnicode("OO2")                // → "ÓO"
KonvertLegacyPOJ.convertCtsTaiLoToUnicode("a9")                 // → "ă"

// CTS POJ → Unicode (OU/Ou tone swap; ou lowercase not swapped)
KonvertLegacyPOJ.convertCtsPojToUnicode("OU2")                  // → "Ò͘"
KonvertLegacyPOJ.convertCtsPojToUnicode("ou2")                  // → "ó͘"
```

## Encoding Maps

All mapping data is derived from `references/POJ_encoding_mappings.txt`, which merges:

- **TP (Taiwanese Package)** — input method and `tws21.ttf` font hack mappings
- **HOTSYS 2000 (SinBongAi CTS)** — number format and font hack mappings

---

### 1. `numberToUnicodeMap` — 93 entries

Converts **Number Format** notation to Unicode POJ. A base letter is followed by a tone digit: `a2` = á (tone 2), `ou7` = ō͘ (tone 7), `nn` = ⁿ (nasalization). Also handles `Ou`/`ou` digraph tones.

<details>
<summary>Show all 93 entries</summary>

| Input | Output | Input | Output | Input | Output |
| ----- | ------ | ----- | ------ | ----- | ------ |
| a2 | á | A2 | Á | ou | o͘ |
| a3 | à | A3 | À | ou2 | ó͘ |
| a5 | â | A5 | Â | ou3 | ò͘ |
| a7 | ā | A7 | Ā | ou5 | ô͘ |
| a8 | a̍ | A8 | A̍ | ou7 | ō͘ |
| a9 | ă | A9 | Ă | ou8 | o̍͘ |
| e2 | é | E2 | É | ou9 | ŏ͘ |
| e3 | è | E3 | È | Ou | O͘ |
| e5 | ê | E5 | Ê | Ou2 | Ó͘ |
| e7 | ē | E7 | Ē | Ou3 | Ò͘ |
| e8 | e̍ | E8 | E̍ | Ou5 | Ô͘ |
| e9 | ĕ | E9 | Ĕ | Ou7 | Ō͘ |
| i2 | í | I2 | Í | Ou8 | O̍͘ |
| i3 | ì | I3 | Ì | Ou9 | Ŏ͘ |
| i5 | î | I5 | Î | u2 | ú |
| i7 | ī | I7 | Ī | u3 | ù |
| i8 | i̍ | I8 | I̍ | u5 | û |
| i9 | ĭ | I9 | Ĭ | u7 | ū |
| m2 | ḿ | M2 | Ḿ | u8 | u̍ |
| m3 | m̀ | M3 | M̀ | u9 | ŭ |
| m5 | m̂ | M5 | M̂ | U2 | Ú |
| m7 | m̄ | M7 | M̄ | U3 | Ù |
| m8 | m̍ | M8 | M̍ | U5 | Û |
| m9 | m̆ | M9 | M̆ | U7 | Ū |
| n2 | ń | N2 | Ń | U8 | U̍ |
| n3 | ǹ | N3 | Ǹ | U9 | Ŭ |
| n5 | n̂ | N5 | N̂ | nn | ⁿ |
| n7 | n̄ | N7 | N̄ | N | ⁿ |
| n8 | n̍ | N8 | N̍ | | |
| n9 | n̆ | N9 | N̆ | | |
| o2 | ó | O2 | Ó | | |
| o3 | ò | O3 | Ò | | |
| o5 | ô | O5 | Ô | | |
| o7 | ō | O7 | Ō | | |
| o8 | o̍ | O8 | O̍ | | |
| o9 | ŏ | O9 | Ŏ | | |

</details>

---

### 2. `tpToUnicodeMap` — 53 entries

Converts the **TP Encoding** format to Unicode. Only encodes tones 7/8 for simple vowels, plus full m/n syllabic tones and `ou`/`Ou` digraph tones.

<details>
<summary>Show all 53 entries</summary>

| Input | Output | Input | Output |
| ----- | ------ | ----- | ------ |
| a7 | ā | A7 | Ā |
| a8 | a̍ | A8 | A̍ |
| e7 | ē | E7 | Ē |
| e8 | e̍ | E8 | E̍ |
| i7 | ī | I7 | Ī |
| i8 | i̍ | I8 | I̍ |
| o7 | ō | O7 | Ō |
| o8 | o̍ | O8 | O̍ |
| u7 | ū | U7 | Ū |
| u8 | u̍ | U8 | U̍ |
| ou | o͘ | Ou | O͘ |
| ou2 | ó͘ | Ou2 | Ó͘ |
| ou3 | ò͘ | Ou3 | Ò͘ |
| ou5 | ô͘ | Ou5 | Ô͘ |
| ou7 | ō͘ | Ou7 | Ō͘ |
| ou8 | o̍͘ | Ou8 | O̍͘ |
| m2 | ḿ | M2 | Ḿ |
| m3 | m̀ | M3 | M̀ |
| m5 | m̂ | M5 | M̂ |
| m7 | m̄ | M7 | M̄ |
| m8 | m̍ | M8 | M̍ |
| n2 | ń | N2 | Ń |
| n3 | ǹ | N3 | Ǹ |
| n5 | n̂ | N5 | N̂ |
| n7 | n̄ | N7 | N̄ |
| n8 | n̍ | N8 | N̍ |
| nn | ⁿ | | |

</details>

---

### 3. `hotsysToUnicodeMap` — 83 entries

Converts **HOTSYS 2000** number-format notation to Unicode. Covers all tones for all vowels plus all-caps `OU` and title-case `Ou` forms with neutral-tone variants (0/4). HOTSYS tone swap (OU2=grave, OU3=acute) is applied for `OU`/`Ou`.

<details>
<summary>Show all 83 entries</summary>

| Input | Output | Input | Output | Input | Output |
| ----- | ------ | ----- | ------ | ----- | ------ |
| a2 | á | A2 | Á | ou | o͘ |
| a3 | à | A3 | À | ou2 | ó͘ |
| a5 | â | A5 | Â | ou3 | ò͘ |
| a7 | ā | A7 | Ā | ou5 | ô͘ |
| a8 | a̍ | A8 | A̍ | ou7 | ō͘ |
| e2 | é | E2 | É | ou8 | o̍͘ |
| e3 | è | E3 | È | Ou | O͘ |
| e5 | ê | E5 | Ê | Ou0 | O͘ |
| e7 | ē | E7 | Ē | Ou2 | Ò͘ |
| e8 | e̍ | E8 | E̍ | Ou3 | Ó͘ |
| i2 | í | I2 | Í | Ou4 | O͘ |
| i3 | ì | I3 | Ì | Ou5 | Ô͘ |
| i5 | î | I5 | Î | Ou7 | Ō͘ |
| i7 | ī | I7 | Ī | Ou8 | O̍͘ |
| i8 | i̍ | I8 | I̍ | Ou9 | Ŏ͘ |
| m2 | ḿ | M2 | Ḿ | OU | O͘ |
| m3 | m̀ | M3 | M̀ | OU0 | O͘ |
| m5 | m̂ | M5 | M̂ | OU2 | Ò͘ |
| m7 | m̄ | M7 | M̄ | OU3 | Ó͘ |
| m8 | m̍ | M8 | M̍ | OU4 | O͘ |
| n2 | ń | N2 | Ń | OU5 | Ô͘ |
| n3 | ǹ | N3 | Ǹ | OU7 | Ō͘ |
| n5 | n̂ | N5 | N̂ | OU8 | O̍͘ |
| n7 | n̄ | N7 | N̄ | OU9 | Ŏ͘ |
| n8 | n̍ | N8 | N̍ | nn | ⁿ |
| o2 | ó | O2 | Ó | | |
| o3 | ò | O3 | Ò | | |
| o5 | ô | O5 | Ô | | |
| o7 | ō | O7 | Ō | | |
| o8 | o̍ | O8 | O̍ | | |
| u2 | ú | U2 | Ú | | |
| u3 | ù | U3 | Ù | | |
| u5 | û | U5 | Û | | |
| u7 | ū | U7 | Ū | | |
| u8 | u̍ | U8 | U̍ | | |

</details>

---

### 4. `unicodeToNumberMap` — 191 entries

The **reverse table**: converts Unicode POJ characters back to Number Format strings. Handles both precomposed (e.g., `á` U+00E1) and decomposed (e.g., `a` + U+0301) Unicode forms. NFD/NFC duplicate pairs are stored for `ou`/`Ou` toned vowels.

<details>
<summary>Show all entries</summary>

| Unicode | Number | Unicode | Number |
| ------- | ------ | ------- | ------ |
| á | a2 | Á | A2 |
| à | a3 | À | A3 |
| â | a5 | Â | A5 |
| ā | a7 | Ā | A7 |
| a̍ | a8 | A̍ | A8 |
| ă | a9 | Ă | A9 |
| é | e2 | É | E2 |
| è | e3 | È | E3 |
| ê | e5 | Ê | E5 |
| ē | e7 | Ē | E7 |
| e̍ | e8 | E̍ | E8 |
| ĕ | e9 | Ĕ | E9 |
| í | i2 | Í | I2 |
| ì | i3 | Ì | I3 |
| î | i5 | Î | I5 |
| ī | i7 | Ī | I7 |
| i̍ | i8 | I̍ | I8 |
| ĭ | i9 | Ĭ | I9 |
| ḿ | m2 | Ḿ | M2 |
| m̀ | m3 | M̀ | M3 |
| m̂ | m5 | M̂ | M5 |
| m̄ | m7 | M̄ | M7 |
| m̍ | m8 | M̍ | M8 |
| m̆ | m9 | M̆ | M9 |
| ń | n2 | Ń | N2 |
| ǹ | n3 | Ǹ | N3 |
| n̂ | n5 | N̂ | N5 |
| n̄ | n7 | N̄ | N7 |
| n̍ | n8 | N̍ | N8 |
| n̆ | n9 | N̆ | N9 |
| ó | o2 | Ó | O2 |
| ò | o3 | Ò | O3 |
| ô | o5 | Ô | O5 |
| ō | o7 | Ō | O7 |
| o̍ | o8 | O̍ | O8 |
| ŏ | o9 | Ŏ | O9 |
| o͘ | ou | O͘ | Ou |
| ó͘ | ou2 | Ó͘ | Ou2 |
| ò͘ | ou3 | Ò͘ | Ou3 |
| ô͘ | ou5 | Ô͘ | Ou5 |
| ō͘ | ou7 | Ō͘ | Ou7 |
| o̍͘ | ou8 | O̍͘ | Ou8 |
| ŏ͘ | ou9 | Ŏ͘ | Ou9 |
| ú | u2 | Ú | U2 |
| ù | u3 | Ù | U3 |
| û | u5 | Û | U5 |
| ū | u7 | Ū | U7 |
| u̍ | u8 | U̍ | U8 |
| ŭ | u9 | Ŭ | U9 |
| ⁿ | N | | |

</details>

---

### 5. `tpFontHackToUnicodeMap` — 76 entries

Converts **legacy font-hack characters** (from `tws21.ttf` Taiwanese Serif / Fixed fonts) to proper Unicode POJ. These fonts remapped standard Latin-1 code points to visually display POJ diacritics.

<details>
<summary>Show all 76 entries</summary>

| Legacy Char | Codepoint | Unicode POJ | POJ Code |
| ----------- | --------- | ----------- | -------- |
| ä | U+00E4 | ā | a7 |
| ã | U+00E3 | a̍ | a8 |
| ë | U+00EB | ē | e7 |
| ç | U+00E7 | e̍ | e8 |
| „ | U+201E | ī | i7 |
| … | U+2026 | i̍ | i8 |
| • | U+2022 | ḿ | m2 |
| – | U+2013 | m̀ | m3 |
| — | U+2014 | m̂ | m5 |
| ˜ | U+02DC | m̄ | m7 |
| ™ | U+2122 | m̍ | m8 |
| ¡ | U+00A1 | ń | n2 |
| ¢ | U+00A2 | ǹ | n3 |
| £ | U+00A3 | n̂ | n5 |
| ¤ | U+00A4 | n̄ | n7 |
| ñ | U+00F1 | n̍ | n8 |
| ö | U+00F6 | ō | o7 |
| õ | U+00F5 | o̍ | o8 |
| ¬ | U+00AC | o͘ | ou |
| ¯ | U+00AF | ó͘ | ou2 |
| ± | U+00B1 | ò͘ | ou3 |
| ² | U+00B2 | ô͘ | ou5 |
| ³ | U+00B3 | ō͘ | ou7 |
| ´ | U+00B4 | o̍͘ | ou8 |
| ü | U+00FC | ū | u7 |
| ý | U+00FD | u̍ | u8 |
| ° | U+00B0 | ⁿ | nn |
| Ä | U+00C4 | Ā | A7 |
| Ã | U+00C3 | A̍ | A8 |
| Ë | U+00CB | Ē | E7 |
| Ç | U+00C7 | E̍ | E8 |
| ‚ | U+201A | Ī | I7 |
| ƒ | U+0192 | I̍ | I8 |
| ˆ | U+02C6 | Ḿ | M2 |
| ‰ | U+2030 | M̀ | M3 |
| Š | U+0160 | M̂ | M5 |
| ‹ | U+2039 | M̄ | M7 |
| Œ | U+0152 | M̍ | M8 |
| š | U+0161 | Ń | N2 |
| › | U+203A | Ǹ | N3 |
| œ | U+0153 | N̂ | N5 |
| Ÿ | U+0178 | N̄ | N7 |
| Ñ | U+00D1 | N̍ | N8 |
| Ö | U+00D6 | Ō | O7 |
| Õ | U+00D5 | O̍ | O8 |
| ¥ | U+00A5 | O͘ | Ou |
| ¦ | U+00A6 | Ó͘ | Ou2 |
| § | U+00A7 | Ò͘ | Ou3 |
| ¨ | U+00A8 | Ô͘ | Ou5 |
| ª | U+00AA | Ō͘ | Ou7 |
| « | U+00AB | O̍͘ | Ou8 |
| Ü | U+00DC | Ū | U7 |
| Ý | U+00DD | U̍ | U8 |

</details>

---

### 6. `hotsysFontHackToUnicodeMap` — 93 entries

Converts **HOTSYS 2000 font-hack characters** (from SinBongAi CTS `$map_hotsys`) to proper Unicode POJ. Applies HOTSYS tone swap: `OU2` → Ò͘ (grave), `OU3` → Ó͘ (acute). Windows-1252 bytes 0x86/0x87 (U+2020 †, U+2021 ‡) are used for `a8` and `u5`.

<details>
<summary>Show all 93 entries</summary>

| Legacy Char | Codepoint | Unicode POJ | POJ Code |
| ----------- | --------- | ----------- | -------- |
| ¡ | U+00A1 | á | a2 |
| … | U+2026 | à | a3 |
| ƒ | U+0192 | â | a5 |
| „ | U+201E | ā | a7 |
| † | U+2020 | a̍ | a8 |
| ‚ | U+201A | é | e2 |
| Š | U+0160 | è | e3 |
| ˆ | U+02C6 | ê | e5 |
| ‰ | U+2030 | ē | e7 |
| ˜ | U+02DC | e̍ | e8 |
| › | U+203A | í | i2 |
| ¢ | U+00A2 | ì | i3 |
| Œ | U+0152 | î | i5 |
| ‹ | U+2039 | ī | i7 |
| Ÿ | U+0178 | i̍ | i8 |
| Ê | U+00CA | ḿ | m2 |
| Ë | U+00CB | m̀ | m3 |
| Ì | U+00CC | m̂ | m5 |
| Þ | U+00DE | m̄ | m7 |
| Í | U+00CD | m̍ | m8 |
| Å | U+00C5 | ń | n2 |
| Æ | U+00C6 | ǹ | n3 |
| Ç | U+00C7 | n̂ | n5 |
| È | U+00C8 | n̄ | n7 |
| É | U+00C9 | n̍ | n8 |
| à | U+00E0 | ó | o2 |
| • | U+2022 | ò | o3 |
| â | U+00E2 | ô | o5 |
| ã | U+00E3 | ō | o7 |
| ß | U+00DF | o̍ | o8 |
| ¨ | U+00A8 | o͘ | ou |
| £ | U+00A3 | ó͘ | ou2 |
| ¤ | U+00A4 | ò͘ | ou3 |
| ¥ | U+00A5 | ô͘ | ou5 |
| ¦ | U+00A6 | ō͘ | ou7 |
| § | U+00A7 | o̍͘ | ou8 |
| ò | U+00F2 | ū | u7 |
| á | U+00E1 | ū | u7 (alt) |
| Ý | U+00DD | ú | u2 |
| Ü | U+00DC | ù | u3 |
| — | U+2014 | ù | u3 (alt) |
| ‡ | U+2021 | û | u5 |
| – | U+2013 | û | u5 (alt) |
| ™ | U+2122 | u̍ | u8 |
| å | U+00E5 | u̍ | u8 (alt) |
| Á | U+00C1 | ⁿ | nn |
| û | U+00FB | Á | A2 |
| ú | U+00FA | À | A3 |
| ñ | U+00F1 | Â | A5 |
| Î | U+00CE | Ā | A7 |
| Ï | U+00CF | A̍ | A8 |
| ³ | U+00B3 | É | E2 |
| ´ | U+00B4 | È | E3 |
| µ | U+00B5 | Ê | E5 |
| Â | U+00C2 | Ē | E7 |
| Ã | U+00C3 | E̍ | E8 |
| ¼ | U+00BC | Í | I2 |
| À | U+00C0 | Ì | I3 |
| ½ | U+00BD | Î | I5 |
| ¾ | U+00BE | Ī | I7 |
| ¿ | U+00BF | I̍ | I8 |
| ® | U+00AE | Ḿ | M2 |
| ª | U+00AA | M̀ | M3 |
| ± | U+00B1 | M̂ | M5 |
| © | U+00A9 | M̄ | M7 |
| ² | U+00B2 | M̍ | M8 |
| ¹ | U+00B9 | Ń | N2 |
| ¸ | U+00B8 | Ǹ | N3 |
| º | U+00BA | N̂ | N5 |
| · | U+00B7 | N̄ | N7 |
| » | U+00BB | N̍ | N8 |
| Ö | U+00D6 | Ō | O7 |
| Õ | U+00D5 | O̍ | O8 |
| œ | U+0153 | O͘ | OU |
| ¬ | U+00AC | Ò͘ | OU2 |
| « | U+00AB | Ó͘ | OU3 |
| ­ | U+00AD | Ô͘ | OU5 |
| ° | U+00B0 | Ō͘ | OU7 |
| ¯ | U+00AF | O̍͘ | OU8 |
| Ø | U+00D8 | Ú | U2 |
| Ù | U+00D9 | Û | U5 |
| Ä | U+00C4 | Û | U5 (alt) |
| Û | U+00DB | Ū | U7 |
| ÿ | U+00FF | Ū | U7 (alt) |
| Ñ | U+00D1 | U̍ | U8 |
| þ | U+00FE | U̍ | U8 (alt) |
| × | U+00D7 | Ù | U3 |
| Ð | U+00D0 | Ù | U3 (alt) |

</details>

---

### 7. `tpPojToUnicodeMap` — 100 entries

Converts **TP POJ Format** to Unicode. Full coverage of all tones (2/3/5/7/8/9) for all vowels plus `ou`/`Ou` digraph tones and `nn`/`N` nasalization.

---

### 8. `hotsysPojToUnicodeMap`

`tpPojToUnicodeMap` extended with HOTSYS-specific all-caps `OU` variants. Applies the HOTSYS tone swap: `OU2` → Ò͘ (grave), `OU3` → Ó͘ (acute), and overrides `Ou2`/`Ou3` to match.

| Key override | Output |
| ------------ | ------ |
| OU / OU0 / OU4 | O͘ |
| OU2 | Ò͘ |
| OU3 | Ó͘ |
| OU5 | Ô͘ |
| OU7 | Ō͘ |
| OU8 | O̍͘ |
| OU9 | Ŏ͘ |
| Ou2 | Ò͘ |
| Ou3 | Ó͘ |

---

### 9. `ctsTaiLoToUnicodeMap` — 96 entries

Converts **SinBongAi CTS Tai-lo** format to Unicode. Includes `OO`/`oo` digraph tones for the Tai-lo `OO` vowel and tone-9 breve forms.

---

### 10. `ctsPojToUnicodeMap` — 106 entries

Converts **SinBongAi CTS POJ** format to Unicode. Covers `OU`/`Ou`/`ou` digraph tones with HOTSYS tone swap for uppercase `OU`/`Ou` (2=grave, 3=acute) but not for lowercase `ou`.

---

## Building

Requires Gradle 8.10.2 (bundled wrapper included).

```bash
# Run all tests
./gradlew jvmTest

# Build
./gradlew build
```

## Project Structure

```
KonvertLegacyPOJ/
├── build.gradle.kts
├── settings.gradle.kts
├── gradle/wrapper/
├── POJ_encoding_mappings.md     # Authoritative reference (rendered)
├── TP_encoding_mappings.md      # TP source mappings (rendered)
├── CTS_encoding_mappings.md     # CTS source mappings (rendered)
├── references/
│   ├── POJ_encoding_mappings.txt    # Merged master reference
│   ├── TP_encoding_mappings.txt     # Generated from TP source files
│   └── SinBongAi/CTS/
│       ├── CTS_encoding_mappings.txt    # Generated from CTS PHP
│       └── CTS_taigionly.php            # Original PHP source
└── src/
    ├── commonMain/kotlin/taibun/kesimi/poj/
    │   └── KonvertLegacyPOJ.kt       # Core object with all maps and conversion functions
    └── commonTest/kotlin/taibun/kesimi/poj/
        └── KonvertLegacyPOJTest.kt    # Unit tests for all conversion directions
```

## Data Source

Reference files follow this provenance chain:

```
TP source files  →  TP_encoding_mappings.txt  →  TP_encoding_mappings.md
CTS PHP source   →  CTS_encoding_mappings.txt →  CTS_encoding_mappings.md
                          ↓ merged
                  POJ_encoding_mappings.txt   →  POJ_encoding_mappings.md
```

The `.txt` files are generated from primary sources; `.md` files are human-readable conversions of the `.txt` files. **`POJ_encoding_mappings.md` is the authoritative reference for all encoding maps in the library.**

- **`TP_encoding_mappings.txt`** — generated from the Taiwanese Package (TP) source files; covers TP POJ numeric format and `tws21.ttf` font hack
- **`CTS_encoding_mappings.txt`** — generated from `CTS_taigionly.php`; covers `$map_tailo`, `$map_utf8`, `$map_tp`, `$map_hotsys`
- **`POJ_encoding_mappings.txt`** — merged from the two above; Tai-lo (`oo`/`OO`) and Hakka (`ii`/`II`/`ṳ`/`Ṳ`) entries excluded

## License

GPLv3
