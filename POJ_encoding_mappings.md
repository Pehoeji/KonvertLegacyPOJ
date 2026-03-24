# Unified POJ Encoding Mappings

Source: [references/POJ_encoding_mappings.txt](references/POJ_encoding_mappings.txt)
Merged from Taiwanese Package (TP) and SinBongAi CTS (Tai-gi only).
Excludes: Tai-lo (oo/OO) and Hakka (ii/II/ṳ/Ṳ)

---

## 1. Taiwanese Package (TP) POJ Mappings

### 1.1 TP POJ Numeric Format → Unicode

Standard numbering for Holo POJ used in the Taiwanese Package system.

| Input | Unicode | Description |
| ----- | ------- | ----------- |
| a2 | á | LATIN SMALL LETTER A WITH ACUTE |
| a3 | à | LATIN SMALL LETTER A WITH GRAVE |
| a5 | â | LATIN SMALL LETTER A WITH CIRCUMFLEX |
| a7 | ā | LATIN SMALL LETTER A WITH MACRON |
| a8 | a̍ | LATIN SMALL LETTER A + COMBINING VERTICAL LINE ABOVE |
| a9 | ă | LATIN SMALL LETTER A WITH BREVE |
| e2 | é | LATIN SMALL LETTER E WITH ACUTE |
| e3 | è | LATIN SMALL LETTER E WITH GRAVE |
| e5 | ê | LATIN SMALL LETTER E WITH CIRCUMFLEX |
| e7 | ē | LATIN SMALL LETTER E WITH MACRON |
| e8 | e̍ | LATIN SMALL LETTER E + COMBINING VERTICAL LINE ABOVE |
| e9 | ĕ | LATIN SMALL LETTER E WITH BREVE |
| i2 | í | LATIN SMALL LETTER I WITH ACUTE |
| i3 | ì | LATIN SMALL LETTER I WITH GRAVE |
| i5 | î | LATIN SMALL LETTER I WITH CIRCUMFLEX |
| i7 | ī | LATIN SMALL LETTER I WITH MACRON |
| i8 | i̍ | LATIN SMALL LETTER I + COMBINING VERTICAL LINE ABOVE |
| i9 | ĭ | LATIN SMALL LETTER I WITH BREVE |
| m2 | ḿ | LATIN SMALL LETTER M WITH ACUTE |
| m3 | m̀ | LATIN SMALL LETTER M + COMBINING GRAVE ACCENT |
| m5 | m̂ | LATIN SMALL LETTER M + COMBINING CIRCUMFLEX ACCENT |
| m7 | m̄ | LATIN SMALL LETTER M + COMBINING MACRON |
| m8 | m̍ | LATIN SMALL LETTER M + COMBINING VERTICAL LINE ABOVE |
| m9 | m̆ | LATIN SMALL LETTER M + COMBINING BREVE |
| n2 | ń | LATIN SMALL LETTER N WITH ACUTE |
| n3 | ǹ | LATIN SMALL LETTER N WITH GRAVE |
| n5 | n̂ | LATIN SMALL LETTER N + COMBINING CIRCUMFLEX ACCENT |
| n7 | n̄ | LATIN SMALL LETTER N + COMBINING MACRON |
| n8 | n̍ | LATIN SMALL LETTER N + COMBINING VERTICAL LINE ABOVE |
| n9 | n̆ | LATIN SMALL LETTER N + COMBINING BREVE |
| o2 | ó | LATIN SMALL LETTER O WITH ACUTE |
| o3 | ò | LATIN SMALL LETTER O WITH GRAVE |
| o5 | ô | LATIN SMALL LETTER O WITH CIRCUMFLEX |
| o7 | ō | LATIN SMALL LETTER O WITH MACRON |
| o8 | o̍ | LATIN SMALL LETTER O + COMBINING VERTICAL LINE ABOVE |
| o9 | ŏ | LATIN SMALL LETTER O WITH BREVE |
| ou | o͘ | LATIN SMALL LETTER O + COMBINING DOT ABOVE RIGHT |
| ou2 | ó͘ | LATIN SMALL LETTER O WITH ACUTE + COMBINING DOT ABOVE RIGHT |
| ou3 | ò͘ | LATIN SMALL LETTER O WITH GRAVE + COMBINING DOT ABOVE RIGHT |
| ou5 | ô͘ | LATIN SMALL LETTER O WITH CIRCUMFLEX + COMBINING DOT ABOVE RIGHT |
| ou7 | ō͘ | LATIN SMALL LETTER O WITH MACRON + COMBINING DOT ABOVE RIGHT |
| ou8 | o̍͘ | LATIN SMALL LETTER O + COMBINING VERTICAL LINE ABOVE + COMBINING DOT ABOVE RIGHT |
| ou9 | ŏ͘ | LATIN SMALL LETTER O WITH BREVE + COMBINING DOT ABOVE RIGHT |
| u2 | ú | LATIN SMALL LETTER U WITH ACUTE |
| u3 | ù | LATIN SMALL LETTER U WITH GRAVE |
| u5 | û | LATIN SMALL LETTER U WITH CIRCUMFLEX |
| u7 | ū | LATIN SMALL LETTER U WITH MACRON |
| u8 | u̍ | LATIN SMALL LETTER U + COMBINING VERTICAL LINE ABOVE |
| u9 | ŭ | LATIN SMALL LETTER U WITH BREVE |
| nn | ⁿ | SUPERSCRIPT LATIN SMALL LETTER N |
| N | ⁿ | SUPERSCRIPT LATIN SMALL LETTER N (TP variant) |

### 1.2 TP POJ Font Hack (tws21.ttf) → Unicode

Mappings for legacy "Taiwanese Serif" font data.

| Legacy Char | Unicode | POJ Code |
| ----------- | ------- | -------- |
| ä | ā | a7 |
| ã | a̍ | a8 |
| ë | ē | e7 |
| ç | e̍ | e8 |
| „ | ī | i7 |
| … | i̍ | i8 |
| • | ḿ | m2 |
| – | m̀ | m3 |
| — | m̂ | m5 |
| ˜ | m̄ | m7 |
| ™ | m̍ | m8 |
| ¡ | ń | n2 |
| ¢ | ǹ | n3 |
| £ | n̂ | n5 |
| ¤ | n̄ | n7 |
| ñ | n̍ | n8 |
| ö | ō | o7 |
| õ | o̍ | o8 |
| ¬ | o͘ | ou |
| ¯ | ó͘ | ou2 |
| ± | ò͘ | ou3 |
| ² | ô͘ | ou5 |
| ³ | ō͘ | ou7 |
| ´ | o̍͘ | ou8 |
| ü | ū | u7 |
| ý | u̍ | u8 |
| ° | ⁿ | nn |

---

## 2. HOTSYS 2000 POJ Mappings

### 2.1 HOTSYS POJ Numeric Format → Unicode

SinBongAi CTS specific variants for HOTSYS-based Holo POJ.

| Input | Unicode | Note |
| ----- | ------- | ---- |
| OU0 | O͘ | Base Nasal O |
| OU2 | Ò͘ | Tone 2 → Grave (SWAP) |
| OU3 | Ó͘ | Tone 3 → Acute (SWAP) |
| OU4 | O͘ | Base Nasal O |
| OU5 | Ô͘ | Tone 5 |
| OU7 | Ō͘ | Tone 7 |
| OU8 | O̍͘ | Tone 8 |
| OU9 | Ŏ͘ | Tone 9 |

### 2.2 HOTSYS POJ Font Hack → Unicode

A different set of legacy mappings used in the HOTSYS system (from CTS_taigionly.php).

| Legacy Char | Unicode | POJ Code |
| ----------- | ------- | -------- |
| ¡ | á | a2 |
| … | à | a3 |
| ƒ | â | a5 |
| „ | ā | a7 |
| † | a̍ | a8 |
| ‚ | é | e2 |
| Š | è | e3 |
| ˆ | ê | e5 |
| ‰ | ē | e7 |
| ˜ | e̍ | e8 |
| › | í | i2 |
| ¢ | ì | i3 |
| Œ | î | i5 |
| ‹ | ī | i7 |
| Ÿ | i̍ | i8 |
| Ê | ḿ | m2 |
| Ë | m̀ | m3 |
| Ì | m̂ | m5 |
| Þ | m̄ | m7 |
| Í | m̍ | m8 |
| Å | ń | n2 |
| Æ | ǹ | n3 |
| Ç | n̂ | n5 |
| È | n̄ | n7 |
| É | n̍ | n8 |
| à | ó | o2 |
| • | ò | o3 |
| â | ô | o5 |
| ã | ō | o7 |
| ß | o̍ | o8 |
| ¨ | o͘ | ou |
| £ | ó͘ | ou2 |
| ¤ | ò͘ | ou3 |
| ¥ | ô͘ | ou5 |
| ¦ | ō͘ | ou7 |
| § | o̍͘ | ou8 |
| ò | ū | u7 |
| á | ū | u7 (alt) |
| Ý | ú | u2 |
| Ü | ù | u3 |
| — | ù | u3 (alt) |
| ‡ | û | u5 |
| – | û | u5 (alt) |
| ™ | u̍ | u8 |
| å | u̍ | u8 (alt) |
| Á | ⁿ | nn |
| û | Á | A2 |
| ú | À | A3 |
| ñ | Â | A5 |
| Î | Ā | A7 |
| Ï | A̍ | A8 |
| ³ | É | E2 |
| ´ | È | E3 |
| µ | Ê | E5 |
| Â | Ē | E7 |
| Ã | E̍ | E8 |
| ¼ | Í | I2 |
| À | Ì | I3 |
| ½ | Î | I5 |
| ¾ | Ī | I7 |
| ¿ | I̍ | I8 |
| ® | Ḿ | M2 |
| ª | M̀ | M3 |
| ± | M̂ | M5 |
| © | M̄ | M7 |
| ² | M̍ | M8 |
| ¹ | Ń | N2 |
| ¸ | Ǹ | N3 |
| º | N̂ | N5 |
| · | N̄ | N7 |
| » | N̍ | N8 |
| Ó | Ó | O2 |
| Ò | Ò | O3 |
| Ô | Ô | O5 |
| Ö | Ō | O7 |
| Õ | O̍ | O8 |
| œ | O͘ | OU |
| ¬ | Ò͘ | OU2 |
| « | Ó͘ | OU3 |
| ­ | Ô͘ | OU5 |
| ° | Ō͘ | OU7 |
| ¯ | O̍͘ | OU8 |
| Ú | Ú | U2 |
| Ø | Ú | U2 (alt) |
| × | Ù | U3 |
| Ð | Ù | U3 (alt) |
| Ù | Û | U5 |
| Ä | Û | U5 (alt) |
| Û | Ū | U7 |
| ÿ | Ū | U7 (alt) |
| Ñ | U̍ | U8 |
| þ | U̍ | U8 (alt) |
