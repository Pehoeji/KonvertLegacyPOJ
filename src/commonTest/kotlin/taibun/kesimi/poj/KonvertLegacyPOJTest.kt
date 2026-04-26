package taibun.kesimi.poj

import kotlin.test.Test
import kotlin.test.assertEquals

class KonvertLegacyPOJTest {

    @Test
    fun testNumberFormatToUnicode() {
        // According to section 1
        assertEquals("á", KonvertLegacyPOJ.convertLegacyNumberFormatToUnicode("a2"))
        assertEquals("o͘", KonvertLegacyPOJ.convertLegacyNumberFormatToUnicode("ou"))
        assertEquals("ò͘", KonvertLegacyPOJ.convertLegacyNumberFormatToUnicode("ou3"))
        assertEquals("o̍", KonvertLegacyPOJ.convertLegacyNumberFormatToUnicode("o8"))
        // Multi-char sequences like 'ou3' should convert properly
        assertEquals("gín-á", KonvertLegacyPOJ.convertLegacyNumberFormatToUnicode("gi2n-a2")) // Wait, map is simple char replace so 'i2'->'í', 'a2'->'á'
    }

    @Test
    fun testTpEncodingToUnicode() {
        // According to section 2
        assertEquals("ā", KonvertLegacyPOJ.convertLegacyTpEncodingToUnicode("a7"))
        assertEquals("a̍", KonvertLegacyPOJ.convertLegacyTpEncodingToUnicode("a8"))
        assertEquals("ē", KonvertLegacyPOJ.convertLegacyTpEncodingToUnicode("e7"))
    }

    @Test
    fun testHotsys2000ToUnicode() {
        // According to section 3
        assertEquals("á", KonvertLegacyPOJ.convertLegacyHotsys2000ToUnicode("a2"))
        assertEquals("a̍", KonvertLegacyPOJ.convertLegacyHotsys2000ToUnicode("a8"))
    }

    @Test
    fun testUnicodeToNumberFormat() {
        // According to section 5
        assertEquals("a2", KonvertLegacyPOJ.convertUnicodeToLegacyNumberFormat("á"))
        assertEquals("ou3", KonvertLegacyPOJ.convertUnicodeToLegacyNumberFormat("ò͘"))
    }

    @Test
    fun testFontHackToUnicode() {
        // Existing correct mappings
        assertEquals("ā", KonvertLegacyPOJ.convertLegacyTpFontHackToUnicode("ä"))       // a7
        assertEquals("m̄", KonvertLegacyPOJ.convertLegacyTpFontHackToUnicode("˜"))       // m7
        assertEquals("ⁿ", KonvertLegacyPOJ.convertLegacyTpFontHackToUnicode("°"))       // nn

        // Previously missing m-related mappings
        assertEquals("ḿ", KonvertLegacyPOJ.convertLegacyTpFontHackToUnicode("\u2022"))   // • → m2
        assertEquals("m̀", KonvertLegacyPOJ.convertLegacyTpFontHackToUnicode("\u2013"))  // – → m3
        assertEquals("m̂", KonvertLegacyPOJ.convertLegacyTpFontHackToUnicode("\u2014"))  // — → m5
        assertEquals("m̍", KonvertLegacyPOJ.convertLegacyTpFontHackToUnicode("\u2122"))  // ™ → m8

        // Previously wrong mappings (now fixed)
        assertEquals("n̄", KonvertLegacyPOJ.convertLegacyTpFontHackToUnicode("¤"))       // n7 (was ū)
        assertEquals("ô͘", KonvertLegacyPOJ.convertLegacyTpFontHackToUnicode("²"))       // ou5 (was ú)

        // Other previously missing mappings
        assertEquals("i̍", KonvertLegacyPOJ.convertLegacyTpFontHackToUnicode("\u2026"))  // … → i8
        assertEquals("n̂", KonvertLegacyPOJ.convertLegacyTpFontHackToUnicode("£"))       // n5
        assertEquals("n̍", KonvertLegacyPOJ.convertLegacyTpFontHackToUnicode("ñ"))       // n8
        assertEquals("ò͘", KonvertLegacyPOJ.convertLegacyTpFontHackToUnicode("±"))       // ou3
        assertEquals("u̍", KonvertLegacyPOJ.convertLegacyTpFontHackToUnicode("ý"))       // u8

        // Contextual test: "h— 人" should become "hm̂ 人"
        assertEquals("hm̂ 人", KonvertLegacyPOJ.convertLegacyTpFontHackToUnicode("h\u2014 人"))

        // Chinese ellipsis must be preserved, not converted
        assertEquals("……", KonvertLegacyPOJ.convertLegacyTpFontHackToUnicode("……"))
        assertEquals("話……", KonvertLegacyPOJ.convertLegacyTpFontHackToUnicode("話……"))
    }

    @Test
    fun testCtsTaiLoToUnicode() {
        assertEquals("ÓO", KonvertLegacyPOJ.convertCtsTaiLoToUnicode("OO2"))
        assertEquals("óo", KonvertLegacyPOJ.convertCtsTaiLoToUnicode("oo2"))
        assertEquals("ă", KonvertLegacyPOJ.convertCtsTaiLoToUnicode("a9"))
        assertEquals("ṳ̍", KonvertLegacyPOJ.convertCtsTaiLoToUnicode("ii8"))
    }

    @Test
    fun testCtsPojToUnicode() {
        // Test swapped tones for nasal dot O
        assertEquals("Ò͘", KonvertLegacyPOJ.convertCtsPojToUnicode("OU2")) // 2 -> Grave in CTS
        assertEquals("Ó͘", KonvertLegacyPOJ.convertCtsPojToUnicode("OU3")) // 3 -> Acute in CTS
        // Lowercase ou2/ou3 are NOT swapped in CTS map_utf8 array
        assertEquals("ó͘", KonvertLegacyPOJ.convertCtsPojToUnicode("ou2"))
        assertEquals("ò͘", KonvertLegacyPOJ.convertCtsPojToUnicode("ou3"))
        
        assertEquals("ⁿ", KonvertLegacyPOJ.convertCtsPojToUnicode("nn"))
    }

    @Test
    fun testLegacyTpPojToUnicode() {
        // Standard mappings
        assertEquals("á", KonvertLegacyPOJ.convertLegacyTpPojToUnicode("a2"))
        assertEquals("o͘", KonvertLegacyPOJ.convertLegacyTpPojToUnicode("ou"))
        assertEquals("ò͘", KonvertLegacyPOJ.convertLegacyTpPojToUnicode("ou3"))
        
        // Nasalization
        assertEquals("ⁿ", KonvertLegacyPOJ.convertLegacyTpPojToUnicode("nn"))
        assertEquals("ⁿ", KonvertLegacyPOJ.convertLegacyTpPojToUnicode("N"))

        // Tone 9
        assertEquals("ă", KonvertLegacyPOJ.convertLegacyTpPojToUnicode("a9"))
    }

    @Test
    fun testLegacyHotsysPojToUnicode() {
        // Standard mappings (shared with TP)
        assertEquals("á", KonvertLegacyPOJ.convertLegacyHotsysPojToUnicode("a2"))
        
        // HOTSYS specific variations (uppercase swap)
        assertEquals("Ò͘", KonvertLegacyPOJ.convertLegacyHotsysPojToUnicode("OU2"))
        assertEquals("Ó͘", KonvertLegacyPOJ.convertLegacyHotsysPojToUnicode("OU3"))
        
        // Base nasal O
        assertEquals("O͘", KonvertLegacyPOJ.convertLegacyHotsysPojToUnicode("OU"))
    }
}
