package taibun.kesimi.poj

object KonvertLegacyPOJ {
    val numberToUnicodeMap = mapOf(
        """ou2""" to """ó͘""",
        """ou3""" to """ò͘""",
        """ou5""" to """ô͘""",
        """ou7""" to """ō͘""",
        """ou8""" to """o̍͘""",
        """ou9""" to """ŏ͘""",
        """Ou2""" to """Ó͘""",
        """Ou3""" to """Ò͘""",
        """Ou5""" to """Ô͘""",
        """Ou7""" to """Ō͘""",
        """Ou8""" to """O̍͘""",
        """Ou9""" to """Ŏ͘""",
        """a2""" to """á""",
        """a3""" to """à""",
        """a5""" to """â""",
        """a7""" to """ā""",
        """a8""" to """a̍""",
        """a9""" to """ă""",
        """e2""" to """é""",
        """e3""" to """è""",
        """e5""" to """ê""",
        """e7""" to """ē""",
        """e8""" to """e̍""",
        """e9""" to """ĕ""",
        """i2""" to """í""",
        """i3""" to """ì""",
        """i5""" to """î""",
        """i7""" to """ī""",
        """i8""" to """i̍""",
        """i9""" to """ĭ""",
        """m2""" to """ḿ""",
        """m3""" to """m̀""",
        """m5""" to """m̂""",
        """m7""" to """m̄""",
        """m8""" to """m̍""",
        """m9""" to """m̆""",
        """n2""" to """ń""",
        """n3""" to """ǹ""",
        """n5""" to """n̂""",
        """n7""" to """n̄""",
        """n8""" to """n̍""",
        """n9""" to """n̆""",
        """o2""" to """ó""",
        """o3""" to """ò""",
        """o5""" to """ô""",
        """o7""" to """ō""",
        """o8""" to """o̍""",
        """o9""" to """ŏ""",
        """ou""" to """o͘""",
        """u2""" to """ú""",
        """u3""" to """ù""",
        """u5""" to """û""",
        """u7""" to """ū""",
        """u8""" to """u̍""",
        """u9""" to """ŭ""",
        """nn""" to """ⁿ""",
        """A2""" to """Á""",
        """A3""" to """À""",
        """A5""" to """Â""",
        """A7""" to """Ā""",
        """A8""" to """A̍""",
        """A9""" to """Ă""",
        """E2""" to """É""",
        """E3""" to """È""",
        """E5""" to """Ê""",
        """E7""" to """Ē""",
        """E8""" to """E̍""",
        """E9""" to """Ĕ""",
        """I2""" to """Í""",
        """I3""" to """Ì""",
        """I5""" to """Î""",
        """I7""" to """Ī""",
        """I8""" to """I̍""",
        """I9""" to """Ĭ""",
        """M2""" to """Ḿ""",
        """M3""" to """M̀""",
        """M5""" to """M̂""",
        """M7""" to """M̄""",
        """M8""" to """M̍""",
        """M9""" to """M̆""",
        """N2""" to """Ń""",
        """N3""" to """Ǹ""",
        """N5""" to """N̂""",
        """N7""" to """N̄""",
        """N8""" to """N̍""",
        """N9""" to """N̆""",
        """O2""" to """Ó""",
        """O3""" to """Ò""",
        """O5""" to """Ô""",
        """O7""" to """Ō""",
        """O8""" to """O̍""",
        """O9""" to """Ŏ""",
        """Ou""" to """O͘""",
        """U2""" to """Ú""",
        """U3""" to """Ù""",
        """U5""" to """Û""",
        """U7""" to """Ū""",
        """U8""" to """U̍""",
        """U9""" to """Ŭ""",
        """N""" to """ⁿ""",
    )

    val tpToUnicodeMap = mapOf(
        """ou2""" to """ó͘""",
        """ou3""" to """ò͘""",
        """ou5""" to """ô͘""",
        """ou7""" to """ō͘""",
        """ou8""" to """o̍͘""",
        """Ou2""" to """Ó͘""",
        """Ou3""" to """Ò͘""",
        """Ou5""" to """Ô͘""",
        """Ou7""" to """Ō͘""",
        """Ou8""" to """O̍͘""",
        """a7""" to """ā""",
        """a8""" to """a̍""",
        """e7""" to """ē""",
        """e8""" to """e̍""",
        """i7""" to """ī""",
        """i8""" to """i̍""",
        """m2""" to """ḿ""",
        """m3""" to """m̀""",
        """m5""" to """m̂""",
        """m7""" to """m̄""",
        """m8""" to """m̍""",
        """n2""" to """ń""",
        """n3""" to """ǹ""",
        """n5""" to """n̂""",
        """n7""" to """n̄""",
        """n8""" to """n̍""",
        """o7""" to """ō""",
        """o8""" to """o̍""",
        """ou""" to """o͘""",
        """u7""" to """ū""",
        """u8""" to """u̍""",
        """nn""" to """ⁿ""",
        """A7""" to """Ā""",
        """A8""" to """A̍""",
        """E7""" to """Ē""",
        """E8""" to """E̍""",
        """I7""" to """Ī""",
        """I8""" to """I̍""",
        """M2""" to """Ḿ""",
        """M3""" to """M̀""",
        """M5""" to """M̂""",
        """M7""" to """M̄""",
        """M8""" to """M̍""",
        """N2""" to """Ń""",
        """N3""" to """Ǹ""",
        """N5""" to """N̂""",
        """N7""" to """N̄""",
        """N8""" to """N̍""",
        """O7""" to """Ō""",
        """O8""" to """O̍""",
        """Ou""" to """O͘""",
        """U7""" to """Ū""",
        """U8""" to """U̍""",
    )

    val hotsysToUnicodeMap = mapOf(
        """ou2""" to """ó͘""",
        """ou3""" to """ò͘""",
        """ou5""" to """ô͘""",
        """ou7""" to """ō͘""",
        """ou8""" to """o̍͘""",
        """OU0""" to """O͘""",
        """OU2""" to """Ò͘""",
        """OU3""" to """Ó͘""",
        """OU4""" to """O͘""",
        """OU5""" to """Ô͘""",
        """OU7""" to """Ō͘""",
        """OU8""" to """O̍͘""",
        """OU9""" to """Ŏ͘""",
        """Ou0""" to """O͘""",
        """Ou2""" to """Ò͘""",
        """Ou3""" to """Ó͘""",
        """Ou4""" to """O͘""",
        """Ou5""" to """Ô͘""",
        """Ou7""" to """Ō͘""",
        """Ou8""" to """O̍͘""",
        """Ou9""" to """Ŏ͘""",
        """a2""" to """á""",
        """a3""" to """à""",
        """a5""" to """â""",
        """a7""" to """ā""",
        """a8""" to """a̍""",
        """e2""" to """é""",
        """e3""" to """è""",
        """e5""" to """ê""",
        """e7""" to """ē""",
        """e8""" to """e̍""",
        """i2""" to """í""",
        """i3""" to """ì""",
        """i5""" to """î""",
        """i7""" to """ī""",
        """i8""" to """i̍""",
        """m2""" to """ḿ""",
        """m3""" to """m̀""",
        """m5""" to """m̂""",
        """m7""" to """m̄""",
        """m8""" to """m̍""",
        """n2""" to """ń""",
        """n3""" to """ǹ""",
        """n5""" to """n̂""",
        """n7""" to """n̄""",
        """n8""" to """n̍""",
        """o2""" to """ó""",
        """o3""" to """ò""",
        """o5""" to """ô""",
        """o7""" to """ō""",
        """o8""" to """o̍""",
        """ou""" to """o͘""",
        """u2""" to """ú""",
        """u3""" to """ù""",
        """u5""" to """û""",
        """u7""" to """ū""",
        """u8""" to """u̍""",
        """nn""" to """ⁿ""",
        """A2""" to """Á""",
        """A3""" to """À""",
        """A5""" to """Â""",
        """A7""" to """Ā""",
        """A8""" to """A̍""",
        """E2""" to """É""",
        """E3""" to """È""",
        """E5""" to """Ê""",
        """E7""" to """Ē""",
        """E8""" to """E̍""",
        """I2""" to """Í""",
        """I3""" to """Ì""",
        """I5""" to """Î""",
        """I7""" to """Ī""",
        """I8""" to """I̍""",
        """M2""" to """Ḿ""",
        """M3""" to """M̀""",
        """M5""" to """M̂""",
        """M7""" to """M̄""",
        """M8""" to """M̍""",
        """N2""" to """Ń""",
        """N3""" to """Ǹ""",
        """N5""" to """N̂""",
        """N7""" to """N̄""",
        """N8""" to """N̍""",
        """O2""" to """Ó""",
        """O3""" to """Ò""",
        """O5""" to """Ô""",
        """O7""" to """Ō""",
        """O8""" to """O̍""",
        """Ou""" to """O͘""",
        """U2""" to """Ú""",
        """U3""" to """Ù""",
        """U5""" to """Û""",
        """U7""" to """Ū""",
        """U8""" to """U̍""",
    )

    val ctsTaiLoToUnicodeMap = mapOf(
        "OO2" to "ÓO", "OO3" to "ÒO", "OO5" to "ÔO", "OO7" to "ŌO", "OO8" to "O̍O",
        "oo2" to "óo", "oo3" to "òo", "oo5" to "ôo", "oo7" to "ōo", "oo8" to "o̍o",
        "OO9" to "Ŏ͘", "oo9" to "ŏ͘",
        "A2" to "Á", "A3" to "À", "A5" to "Â", "A7" to "Ā", "A8" to "A̍",
        "a2" to "á", "a3" to "à", "a5" to "â", "a7" to "ā", "a8" to "a̍",
        "E2" to "É", "E3" to "È", "E5" to "Ê", "E7" to "Ē", "E8" to "E̍",
        "e2" to "é", "e3" to "è", "e5" to "ê", "e7" to "ē", "e8" to "e̍",
        "O2" to "Ó", "O3" to "Ò", "O5" to "Ô", "O7" to "Ō", "O8" to "O̍",
        "o2" to "ó", "o3" to "ò", "o5" to "ô", "o7" to "ō", "o8" to "o̍",
        "I2" to "Í", "I3" to "Ì", "I5" to "Î", "I7" to "Ī", "I8" to "I̍",
        "i2" to "í", "i3" to "ì", "i5" to "î", "i7" to "ī", "i8" to "i̍",
        "M2" to "Ḿ", "M3" to "M̀", "M5" to "M̂", "M7" to "M̄", "M8" to "M̍",
        "m2" to "ḿ", "m3" to "m̀", "m5" to "m̂", "m7" to "m̄", "m8" to "m̍",
        "N2" to "Ń", "N3" to "Ǹ", "N5" to "N̂", "N7" to "N̄", "N8" to "N̍",
        "n2" to "ń", "n3" to "ǹ", "n5" to "n̂", "n7" to "n̄", "n8" to "n̍",
        "U2" to "Ú", "U3" to "Ù", "U5" to "Û", "U7" to "Ū", "U8" to "U̍",
        "u2" to "ú", "u3" to "ù", "u5" to "û", "u7" to "ū", "u8" to "u̍",
        "a9" to "ă", "i9" to "ĭ", "u9" to "ŭ", "e9" to "ĕ", "o9" to "ŏ",
        "m9" to "m̆", "n9" to "n̆g", "A9" to "Ă", "I9" to "Ĭ", "U9" to "Ŭ", "E9" to "Ĕ", "O9" to "Ŏ", "M9" to "M̆", "N9" to "N̆g"
    )

    val ctsPojToUnicodeMap = mapOf(
        "OU0" to "O͘", "OU2" to "Ò͘", "OU3" to "Ó͘", "OU4" to "O͘", "OU5" to "Ô͘", "OU7" to "Ō͘", "OU8" to "O̍͘",
        "Ou0" to "O͘", "Ou2" to "Ò͘", "Ou3" to "Ó͘", "Ou4" to "O͘", "Ou5" to "Ô͘", "Ou7" to "Ō͘", "Ou8" to "O̍͘",
        "ou0" to "o͘", "ou2" to "ó͘", "ou3" to "ò͘", "ou4" to "o͘", "ou5" to "ô͘", "ou7" to "ō͘", "ou8" to "o̍͘",
        "A2" to "Á", "A3" to "À", "A5" to "Â", "A7" to "Ā", "A8" to "A̍",
        "a2" to "á", "a3" to "à", "a5" to "â", "a7" to "ā", "a8" to "a̍",
        "E2" to "É", "E3" to "È", "E5" to "Ê", "E7" to "Ē", "E8" to "E̍",
        "e2" to "é", "e3" to "è", "e5" to "ê", "e7" to "ē", "e8" to "e̍",
        "I2" to "Í", "I3" to "Ì", "I5" to "Î", "I7" to "Ī", "I8" to "I̍",
        "i2" to "í", "i3" to "ì", "i5" to "î", "i7" to "ī", "i8" to "i̍",
        "M2" to "Ḿ", "M3" to "M̀", "M5" to "M̂", "M7" to "M̄", "M8" to "M̍",
        "m2" to "ḿ", "m3" to "m̀", "m5" to "m̂", "m7" to "m̄", "m8" to "m̍",
        "nn" to "ⁿ",
        "N2" to "Ń", "N3" to "Ǹ", "N5" to "N̂", "N7" to "N̄", "N8" to "N̍",
        "n2" to "ń", "n3" to "ǹ", "n5" to "n̂", "n7" to "n̄", "n8" to "n̍",
        "O2" to "Ó", "O3" to "Ò", "O5" to "Ô", "O7" to "Ō", "O8" to "O̍",
        "o2" to "ó", "o3" to "ò", "o5" to "ô", "o7" to "ō", "o8" to "o̍",
        "U2" to "Ú", "U3" to "Ù", "U5" to "Û", "U7" to "Ū", "U8" to "U̍",
        "u2" to "ú", "u3" to "ù", "u5" to "û", "u7" to "ū", "u8" to "u̍",
        "a9" to "ă", "i9" to "ĭ", "u9" to "ŭ", "e9" to "ĕ", "o9" to "ŏ", "oo9" to "ŏ͘",
        "m9" to "m̆", "n9" to "n̆g", "A9" to "Ă", "I9" to "Ĭ", "U9" to "Ŭ", "E9" to "Ĕ", "O9" to "Ŏ", "OU9" to "Ŏ͘", "M9" to "M̆", "N9" to "N̆g"
    )

    val unicodeToNumberMap = mapOf(
        """ó͘""" to """ou2""",
        """ó͘""" to """ou2""",
        """ò͘""" to """ou3""",
        """ò͘""" to """ou3""",
        """ô͘""" to """ou5""",
        """ô͘""" to """ou5""",
        """ō͘""" to """ou7""",
        """ō͘""" to """ou7""",
        """o̍͘""" to """ou8""",
        """o̍͘""" to """ou8""",
        """ŏ͘""" to """ou9""",
        """ŏ͘""" to """ou9""",
        """Ó͘""" to """Ou2""",
        """Ó͘""" to """Ou2""",
        """Ò͘""" to """Ou3""",
        """Ò͘""" to """Ou3""",
        """Ô͘""" to """Ou5""",
        """Ô͘""" to """Ou5""",
        """Ō͘""" to """Ou7""",
        """Ō͘""" to """Ou7""",
        """O̍͘""" to """Ou8""",
        """O̍͘""" to """Ou8""",
        """Ŏ͘""" to """Ou9""",
        """Ŏ͘""" to """Ou9""",
        """á""" to """a2""",
        """à""" to """a3""",
        """â""" to """a5""",
        """ā""" to """a7""",
        """a̍""" to """a8""",
        """ă""" to """a9""",
        """é""" to """e2""",
        """è""" to """e3""",
        """ê""" to """e5""",
        """ē""" to """e7""",
        """e̍""" to """e8""",
        """ĕ""" to """e9""",
        """í""" to """i2""",
        """ì""" to """i3""",
        """î""" to """i5""",
        """ī""" to """i7""",
        """i̍""" to """i8""",
        """ĭ""" to """i9""",
        """ḿ""" to """m2""",
        """m̀""" to """m3""",
        """m̂""" to """m5""",
        """m̄""" to """m7""",
        """m̍""" to """m8""",
        """m̆""" to """m9""",
        """ń""" to """n2""",
        """ǹ""" to """n3""",
        """n̂""" to """n5""",
        """n̄""" to """n7""",
        """n̍""" to """n8""",
        """n̆""" to """n9""",
        """ó""" to """o2""",
        """ò""" to """o3""",
        """ô""" to """o5""",
        """ō""" to """o7""",
        """o̍""" to """o8""",
        """ŏ""" to """o9""",
        """o͘""" to """ou""",
        """ó͘""" to """ou2""",
        """ò͘""" to """ou3""",
        """ô͘""" to """ou5""",
        """ō͘""" to """ou7""",
        """ŏ͘""" to """ou9""",
        """ú""" to """u2""",
        """ù""" to """u3""",
        """û""" to """u5""",
        """ū""" to """u7""",
        """u̍""" to """u8""",
        """ŭ""" to """u9""",
        """Á""" to """A2""",
        """À""" to """A3""",
        """Â""" to """A5""",
        """Ā""" to """A7""",
        """A̍""" to """A8""",
        """Ă""" to """A9""",
        """É""" to """E2""",
        """È""" to """E3""",
        """Ê""" to """E5""",
        """Ē""" to """E7""",
        """E̍""" to """E8""",
        """Ĕ""" to """E9""",
        """Í""" to """I2""",
        """Ì""" to """I3""",
        """Î""" to """I5""",
        """Ī""" to """I7""",
        """I̍""" to """I8""",
        """Ĭ""" to """I9""",
        """Ḿ""" to """M2""",
        """M̀""" to """M3""",
        """M̂""" to """M5""",
        """M̄""" to """M7""",
        """M̍""" to """M8""",
        """M̆""" to """M9""",
        """Ń""" to """N2""",
        """Ǹ""" to """N3""",
        """N̂""" to """N5""",
        """N̄""" to """N7""",
        """N̍""" to """N8""",
        """N̆""" to """N9""",
        """Ó""" to """O2""",
        """Ò""" to """O3""",
        """Ô""" to """O5""",
        """Ō""" to """O7""",
        """O̍""" to """O8""",
        """Ŏ""" to """O9""",
        """O͘""" to """Ou""",
        """Ó͘""" to """Ou2""",
        """Ò͘""" to """Ou3""",
        """Ô͘""" to """Ou5""",
        """Ō͘""" to """Ou7""",
        """Ŏ͘""" to """Ou9""",
        """Ú""" to """U2""",
        """Ù""" to """U3""",
        """Û""" to """U5""",
        """Ū""" to """U7""",
        """U̍""" to """U8""",
        """Ŭ""" to """U9""",
        """a""" to """a""",
        """á""" to """a2""",
        """à""" to """a3""",
        """â""" to """a5""",
        """ā""" to """a7""",
        """ă""" to """a9""",
        """e""" to """e""",
        """é""" to """e2""",
        """è""" to """e3""",
        """ê""" to """e5""",
        """ē""" to """e7""",
        """ĕ""" to """e9""",
        """i""" to """i""",
        """í""" to """i2""",
        """ì""" to """i3""",
        """î""" to """i5""",
        """ī""" to """i7""",
        """ĭ""" to """i9""",
        """m""" to """m""",
        """ḿ""" to """m2""",
        """n""" to """n""",
        """ń""" to """n2""",
        """ǹ""" to """n3""",
        """o""" to """o""",
        """ó""" to """o2""",
        """ò""" to """o3""",
        """ô""" to """o5""",
        """ō""" to """o7""",
        """ŏ""" to """o9""",
        """u""" to """u""",
        """ú""" to """u2""",
        """ù""" to """u3""",
        """û""" to """u5""",
        """ū""" to """u7""",
        """ŭ""" to """u9""",
        """ⁿ""" to """N""",
        """A""" to """A""",
        """Á""" to """A2""",
        """À""" to """A3""",
        """Â""" to """A5""",
        """Ā""" to """A7""",
        """Ă""" to """A9""",
        """E""" to """E""",
        """É""" to """E2""",
        """È""" to """E3""",
        """Ê""" to """E5""",
        """Ē""" to """E7""",
        """Ĕ""" to """E9""",
        """I""" to """I""",
        """Í""" to """I2""",
        """Ì""" to """I3""",
        """Î""" to """I5""",
        """Ī""" to """I7""",
        """Ĭ""" to """I9""",
        """M""" to """M""",
        """Ḿ""" to """M2""",
        """N""" to """N""",
        """Ń""" to """N2""",
        """Ǹ""" to """N3""",
        """O""" to """O""",
        """Ó""" to """O2""",
        """Ò""" to """O3""",
        """Ô""" to """O5""",
        """Ō""" to """O7""",
        """Ŏ""" to """O9""",
        """U""" to """U""",
        """Ú""" to """U2""",
        """Ù""" to """U3""",
        """Û""" to """U5""",
        """Ū""" to """U7""",
        """Ŭ""" to """U9""",
    )

    val tpFontHackToUnicodeMap = mapOf(
        // Lowercase a: a7, a8
        "ä" to "ā",         // U+00E4 → a7
        "ã" to "a̍",        // U+00E3 → a8
        // Lowercase e: e7, e8
        "ë" to "ē",         // U+00EB → e7
        "ç" to "e̍",        // U+00E7 → e8
        // Lowercase i: i7, i8
        "„" to "ī",         // U+201E → i7
        "\u2026" to "i̍",   // U+2026 … → i8
        // Lowercase m: m2, m3, m5, m7, m8
        "\u2022" to "ḿ",    // U+2022 • → m2
        "\u2013" to "m̀",   // U+2013 – → m3
        "\u2014" to "m̂",   // U+2014 — → m5
        "˜" to "m̄",        // U+02DC → m7
        "\u2122" to "m̍",   // U+2122 ™ → m8
        // Lowercase n: n2, n3, n5, n7, n8
        "¡" to "ń",         // U+00A1 → n2
        "¢" to "ǹ",         // U+00A2 → n3
        "£" to "n̂",        // U+00A3 → n5
        "¤" to "n̄",        // U+00A4 → n7
        "ñ" to "n̍",        // U+00F1 → n8
        // Lowercase o: o7, o8
        "ö" to "ō",         // U+00F6 → o7
        "õ" to "o̍",        // U+00F5 → o8
        // Lowercase ou: ou, ou2, ou3, ou5, ou7, ou8
        "¬" to "o͘",        // U+00AC → ou
        "¯" to "ó͘",        // U+00AF → ou2
        "±" to "ò͘",        // U+00B1 → ou3
        "²" to "ô͘",        // U+00B2 → ou5
        "³" to "ō͘",        // U+00B3 → ou7
        "´" to "o̍͘",       // U+00B4 → ou8
        // Lowercase u: u7, u8
        "ü" to "ū",         // U+00FC → u7
        "ý" to "u̍",        // U+00FD → u8
        // nn
        "°" to "ⁿ",         // U+00B0 → nn
        // Uppercase A: A7, A8
        "Ä" to "Ā",         // U+00C4 → A7
        "Ã" to "A̍",        // U+00C3 → A8
        // Uppercase E: E7, E8
        "Ë" to "Ē",         // U+00CB → E7
        "Ç" to "E̍",        // U+00C7 → E8
        // Uppercase I: I7, I8
        "\u201A" to "Ī",    // U+201A ‚ → I7
        "\u0192" to "I̍",   // U+0192 ƒ → I8
        // Uppercase M: M2, M3, M5, M7, M8
        "\u02C6" to "Ḿ",    // U+02C6 ˆ → M2
        "\u2030" to "M̀",   // U+2030 ‰ → M3
        "\u0160" to "M̂",   // U+0160 Š → M5
        "\u2039" to "M̄",   // U+2039 ‹ → M7
        "\u0152" to "M̍",   // U+0152 Œ → M8
        // Uppercase N: N2, N3, N5, N7, N8
        "\u0161" to "Ń",    // U+0161 š → N2
        "\u203A" to "Ǹ",    // U+203A › → N3
        "\u0153" to "N̂",   // U+0153 œ → N5
        "\u0178" to "N̄",   // U+0178 Ÿ → N7
        "Ñ" to "N̍",        // U+00D1 → N8
        // Uppercase O: O7, O8
        "Ö" to "Ō",         // U+00D6 → O7
        "Õ" to "O̍",        // U+00D5 → O8
        // Uppercase Ou: Ou, Ou2, Ou3, Ou5, Ou7, Ou8
        "¥" to "O͘",        // U+00A5 → Ou
        "¦" to "Ó͘",        // U+00A6 → Ou2
        "§" to "Ò͘",        // U+00A7 → Ou3
        "¨" to "Ô͘",        // U+00A8 → Ou5
        "ª" to "Ō͘",        // U+00AA → Ou7
        "«" to "O̍͘",       // U+00AB → Ou8
        // Uppercase U: U7, U8
        "Ü" to "Ū",         // U+00DC → U7
        "Ý" to "U̍",        // U+00DD → U8
        // PUA separator
        "\uF03F" to " ",    // PUA separator glyph → space
    )

    val tpPojToUnicodeMap = mapOf(
        "a2" to "á", "a3" to "à", "a5" to "â", "a7" to "ā", "a8" to "a̍", "a9" to "ă",
        "e2" to "é", "e3" to "è", "e5" to "ê", "e7" to "ē", "e8" to "e̍", "e9" to "ĕ",
        "i2" to "í", "i3" to "ì", "i5" to "î", "i7" to "ī", "i8" to "i̍", "i9" to "ĭ",
        "m2" to "ḿ", "m3" to "m̀", "m5" to "m̂", "m7" to "m̄", "m8" to "m̍", "m9" to "m̆",
        "n2" to "ń", "n3" to "ǹ", "n5" to "n̂", "n7" to "n̄", "n8" to "n̍", "n9" to "n̆",
        "o2" to "ó", "o3" to "ò", "o5" to "ô", "o7" to "ō", "o8" to "o̍", "o9" to "ŏ",
        "ou2" to "ó͘", "ou3" to "ò͘", "ou5" to "ô͘", "ou7" to "ō͘", "ou8" to "o̍͘", "ou9" to "ŏ͘", "ou" to "o͘",
        "u2" to "ú", "u3" to "ù", "u5" to "û", "u7" to "ū", "u8" to "u̍", "u9" to "ŭ",
        "nn" to "ⁿ", "N" to "ⁿ",
        "A2" to "Á", "A3" to "À", "A5" to "Â", "A7" to "Ā", "A8" to "A̍", "A9" to "Ă",
        "E2" to "É", "E3" to "È", "E5" to "Ê", "E7" to "Ē", "E8" to "E̍", "E9" to "Ĕ",
        "I2" to "Í", "I3" to "Ì", "I5" to "Î", "I7" to "Ī", "I8" to "I̍", "I9" to "Ĭ",
        "M2" to "Ḿ", "M3" to "M̀", "M5" to "M̂", "M7" to "M̄", "M8" to "M̍", "M9" to "M̆",
        "N2" to "Ń", "N3" to "Ǹ", "N5" to "N̂", "N7" to "N̄", "N8" to "N̍", "N9" to "N̆",
        "O2" to "Ó", "O3" to "Ò", "O5" to "Ô", "O7" to "Ō", "O8" to "O̍", "O9" to "Ŏ",
        "Ou2" to "Ó͘", "Ou3" to "Ò͘", "Ou5" to "Ô͘", "Ou7" to "Ō͘", "Ou8" to "O̍͘", "Ou9" to "Ŏ͘", "Ou" to "O͘",
        "U2" to "Ú", "U3" to "Ù", "U5" to "Û", "U7" to "Ū", "U8" to "U̍", "U9" to "Ŭ",
    )

    val hotsysPojToUnicodeMap = tpPojToUnicodeMap + mapOf(
        "OU2" to "Ò͘", "OU3" to "Ó͘", "OU5" to "Ô͘", "OU7" to "Ō͘", "OU8" to "O̍͘", "OU9" to "Ŏ͘", "OU" to "O͘", "OU0" to "O͘", "OU4" to "O͘",
        "Ou2" to "Ò͘", "Ou3" to "Ó͘",
    )

    val hotsysFontHackToUnicodeMap = mapOf(
        // Lowercase a
        "¡" to "á",         // U+00A1 → a2
        "\u2026" to "à",    // U+2026 … → a3
        "\u0192" to "â",    // U+0192 ƒ → a5
        "\u201E" to "ā",    // U+201E „ → a7
        "\u2020" to "a̍",   // U+2020 † → a8 (Win-1252 byte 0x86)
        // Lowercase e
        "\u201A" to "é",    // U+201A ‚ → e2
        "\u0160" to "è",    // U+0160 Š → e3
        "\u02C6" to "ê",    // U+02C6 ˆ → e5
        "\u2030" to "ē",    // U+2030 ‰ → e7
        "\u02DC" to "e̍",   // U+02DC ˜ → e8
        // Lowercase i
        "\u203A" to "í",    // U+203A › → i2
        "¢" to "ì",         // U+00A2 → i3
        "\u0152" to "î",    // U+0152 Œ → i5
        "\u2039" to "ī",    // U+2039 ‹ → i7
        "\u0178" to "i̍",   // U+0178 Ÿ → i8
        // Lowercase m
        "Ê" to "ḿ",         // U+00CA → m2
        "Ë" to "m̀",        // U+00CB → m3
        "Ì" to "m̂",        // U+00CC → m5
        "Þ" to "m̄",        // U+00DE → m7
        "Í" to "m̍",        // U+00CD → m8
        // Lowercase n
        "Å" to "ń",         // U+00C5 → n2
        "Æ" to "ǹ",         // U+00C6 → n3
        "Ç" to "n̂",        // U+00C7 → n5
        "È" to "n̄",        // U+00C8 → n7
        "É" to "n̍",        // U+00C9 → n8
        // Lowercase o
        "à" to "ó",         // U+00E0 → o2
        "\u2022" to "ò",    // U+2022 • → o3
        "â" to "ô",         // U+00E2 → o5
        "ã" to "ō",         // U+00E3 → o7
        "ß" to "o̍",        // U+00DF → o8
        // Lowercase ou (nasal o)
        "¨" to "o͘",        // U+00A8 → ou (base)
        "£" to "ó͘",        // U+00A3 → ou2
        "¤" to "ò͘",        // U+00A4 → ou3
        "¥" to "ô͘",        // U+00A5 → ou5
        "¦" to "ō͘",        // U+00A6 → ou7
        "§" to "o̍͘",       // U+00A7 → ou8
        // Lowercase u
        "ò" to "ū",         // U+00F2 → u7
        "á" to "ū",         // U+00E1 → u7 (alternate)
        "Ý" to "ú",         // U+00DD → u2
        "Ü" to "ù",         // U+00DC → u3
        "\u2014" to "ù",    // U+2014 — → u3 (alternate)
        "\u2021" to "û",    // U+2021 ‡ → u5 (Win-1252 byte 0x87)
        "\u2013" to "û",    // U+2013 – → u5 (alternate)
        "\u2122" to "u̍",   // U+2122 ™ → u8
        "å" to "u̍",        // U+00E5 → u8 (alternate)
        // nn
        "Á" to "ⁿ",         // U+00C1 → nn
        // Uppercase A
        "û" to "Á",         // U+00FB → A2
        "ú" to "À",         // U+00FA → A3
        "ñ" to "Â",         // U+00F1 → A5
        "Î" to "Ā",         // U+00CE → A7
        "Ï" to "A̍",        // U+00CF → A8
        // Uppercase E
        "³" to "É",         // U+00B3 → E2
        "´" to "È",         // U+00B4 → E3
        "µ" to "Ê",         // U+00B5 → E5
        "Â" to "Ē",         // U+00C2 → E7
        "Ã" to "E̍",        // U+00C3 → E8
        // Uppercase I
        "¼" to "Í",         // U+00BC → I2
        "À" to "Ì",         // U+00C0 → I3
        "½" to "Î",         // U+00BD → I5
        "¾" to "Ī",         // U+00BE → I7
        "¿" to "I̍",        // U+00BF → I8
        // Uppercase M
        "®" to "Ḿ",         // U+00AE → M2
        "ª" to "M̀",        // U+00AA → M3
        "±" to "M̂",        // U+00B1 → M5
        "©" to "M̄",        // U+00A9 → M7
        "²" to "M̍",        // U+00B2 → M8
        // Uppercase N
        "¹" to "Ń",         // U+00B9 → N2
        "¸" to "Ǹ",         // U+00B8 → N3
        "º" to "N̂",        // U+00BA → N5
        "·" to "N̄",        // U+00B7 → N7
        "»" to "N̍",        // U+00BB → N8
        // Uppercase O
        "Ö" to "Ō",         // U+00D6 → O7
        "Õ" to "O̍",        // U+00D5 → O8
        // Uppercase OU (nasal O, HOTSYS tone swap: OU2=grave, OU3=acute)
        "œ" to "O͘",        // U+0153 → OU (base)
        "¬" to "Ò͘",        // U+00AC → OU2
        "«" to "Ó͘",        // U+00AB → OU3
        "\u00AD" to "Ô͘",   // U+00AD → OU5
        "°" to "Ō͘",        // U+00B0 → OU7
        "¯" to "O̍͘",       // U+00AF → OU8
        // Uppercase U
        "Ø" to "Ú",         // U+00D8 → U2
        "Ù" to "Û",         // U+00D9 → U5
        "Ä" to "Û",         // U+00C4 → U5 (alternate)
        "Û" to "Ū",         // U+00DB → U7
        "ÿ" to "Ū",         // U+00FF → U7 (alternate)
        "Ñ" to "U̍",        // U+00D1 → U8
        "þ" to "U̍",        // U+00FE → U8 (alternate)
        "×" to "Ù",         // U+00D7 → U3
        "Ð" to "Ù",         // U+00D0 → U3 (alternate)
    )

    private fun convert(input: String, map: Map<String, String>): String {
        var result = input
        for ((k, v) in map) {
            result = result.replace(k, v)
        }
        return result
    }

    fun convertLegacyNumberFormatToUnicode(input: String): String = convert(input, numberToUnicodeMap)
    
    fun convertLegacyTpEncodingToUnicode(input: String): String = convert(input, tpToUnicodeMap)
    
    fun convertLegacyHotsys2000ToUnicode(input: String): String = convert(input, hotsysToUnicodeMap)
    
    fun convertUnicodeToLegacyNumberFormat(input: String): String = convert(input, unicodeToNumberMap)
    
    fun convertLegacyTpFontHackToUnicode(input: String): String = convert(input, tpFontHackToUnicodeMap)

    fun convertLegacyHotsysFontHackToUnicode(input: String): String = convert(input, hotsysFontHackToUnicodeMap)

    fun convertCtsTaiLoToUnicode(input: String): String = convert(input, ctsTaiLoToUnicodeMap)

    fun convertCtsPojToUnicode(input: String): String = convert(input, ctsPojToUnicodeMap)

    fun convertLegacyTpPojToUnicode(input: String): String = convert(input, tpPojToUnicodeMap)

    fun convertLegacyHotsysPojToUnicode(input: String): String = convert(input, hotsysPojToUnicodeMap)
}
