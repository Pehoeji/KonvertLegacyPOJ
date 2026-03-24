# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
# Run all tests (JVM target)
./gradlew jvmTest

# Run a single test class
./gradlew jvmTest --tests "taibun.kesimi.poj.KonvertLegacyPOJTest"

# Run a single test method
./gradlew jvmTest --tests "taibun.kesimi.poj.KonvertLegacyPOJTest.testFontHackToUnicode"

# Build all targets
./gradlew build

# Run the file conversion utility (JVM only, requires PhahngEKoosu.txt to exist)
./gradlew jvmTest --tests "taibun.kesimi.poj.GenerateFileTest"
```

## Architecture

Single-file library: all logic lives in `src/commonMain/kotlin/taibun/kesimi/poj/KonvertLegacyPOJ.kt` as a Kotlin `object`.

**Structure of `KonvertLegacyPOJ`:**
- 10 `val` maps (immutable `mapOf(...)`) declared at the top
- 1 private `convert(input, map)` function that iterates all map entries calling `String.replace`
- 10 public `fun` wrappers — one per map — each just calls `convert(input, <map>)`

**Map overview and relationships:**

| Map | Input format | Notable |
|-----|-------------|---------|
| `numberToUnicodeMap` | `a2`, `ou3`, `nn` | General number-format → Unicode |
| `tpToUnicodeMap` | `a7`, `a8`, `ou2` | TP input method subset (tones 7/8 + ou/m/n only) |
| `hotsysToUnicodeMap` | `a2`, `OU2`, `Ou3` | HOTSYS 2000 number format; covers `OU`/`Ou` all-caps/title-case variants |
| `unicodeToNumberMap` | Unicode chars | Reverse lookup; has NFD+NFC duplicate pairs for nasal-O (`ou`/`Ou`) entries |
| `tpFontHackToUnicodeMap` | Latin-1 chars from `tws21.ttf` | TP font hack → Unicode |
| `hotsysFontHackToUnicodeMap` | Latin-1/Win-1252 chars | HOTSYS font hack → Unicode; `†` (U+2020) = a8, `‡` (U+2021) = u5 |
| `tpPojToUnicodeMap` | `a2`–`u9`, `ou`, `nn` | Full TP POJ format coverage |
| `hotsysPojToUnicodeMap` | Same + `OU`/`OU2`… | `tpPojToUnicodeMap + mapOf(OU overrides)` — overrides win due to Kotlin `+` semantics |
| `ctsTaiLoToUnicodeMap` | `OO2`, `a9`, … | SinBongAi CTS Tai-lo; includes `OO`/`oo` digraph |
| `ctsPojToUnicodeMap` | `OU2`, `Ou3`, `ou2` | SinBongAi CTS POJ |

**HOTSYS tone swap:** HOTSYS/CTS POJ swaps tones 2 and 3 for the nasal-O vowel only:
- `OU2` / `Ou2` → Ò͘ (grave, not acute)
- `OU3` / `Ou3` → Ó͘ (acute, not grave)
- Lowercase `ou2`/`ou3` are **not** swapped

**Scope:** Holo (Taiwanese Hokkien) only. Hakka entries (`ii`/`II`/`ṳ`/`Ṳ`) are intentionally absent from all maps.

## Reference file hierarchy

The `.txt` files are generated from primary sources; `.md` files are human-readable conversions of the `.txt` files:

```
TP source files  →  TP_encoding_mappings.txt  →  TP_encoding_mappings.md
CTS PHP source   →  CTS_encoding_mappings.txt →  CTS_encoding_mappings.md
                          ↓ merged
                  POJ_encoding_mappings.txt   →  POJ_encoding_mappings.md  ← authoritative for lib code
```

**`POJ_encoding_mappings.md` is the authoritative reference for all maps in `KonvertLegacyPOJ.kt`.** When auditing or updating any map, verify against this file first.

Sections in `POJ_encoding_mappings.md` and the maps they govern:

| Section | Content | Code map |
|---------|---------|----------|
| 1.1 | TP POJ Numeric Format | `numberToUnicodeMap`, `tpPojToUnicodeMap` |
| 1.2 | TP POJ Font Hack (tws21.ttf) | `tpFontHackToUnicodeMap` |
| 2.1 | HOTSYS POJ Numeric Format (OU only) | `hotsysToUnicodeMap` (OU/Ou entries), `hotsysPojToUnicodeMap` (overrides) |
| 2.2 | HOTSYS POJ Font Hack | `hotsysFontHackToUnicodeMap` |

`CTS_encoding_mappings.md` governs:

| Section | Content | Code map |
|---------|---------|----------|
| 1 (`$map_tailo`) | CTS Tai-lo | `ctsTaiLoToUnicodeMap` |
| 2 (`$map_utf8`) | CTS POJ (upper + lowercase, all vowels) | `ctsPojToUnicodeMap`; uppercase vowel entries in `numberToUnicodeMap` / `tpPojToUnicodeMap` also sourced here |
| 4 (`$map_hotsys`) | HOTSYS font hack | `hotsysFontHackToUnicodeMap` |
