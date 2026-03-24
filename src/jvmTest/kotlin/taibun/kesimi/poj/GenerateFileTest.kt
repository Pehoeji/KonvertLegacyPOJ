package taibun.kesimi.poj

import java.io.File
import kotlin.test.Test

class GenerateFileTest {
    @Test
    fun generateFile() {
        val inFile = File("/Users/hebi/Data/SourceCode/TaibunChoanbe/TanLekun_TanBengjin/PhahngEKoosu.txt")
        val outFile = File("/Users/hebi/Data/SourceCode/TaibunChoanbe/TanLekun_TanBengjin/PhahngEKoosu_POJ.txt")
        
        val text = inFile.readText(Charsets.UTF_8)
        val converted = KonvertLegacyPOJ.convertLegacyTpFontHackToUnicode(text)
        
        outFile.writeText(converted, Charsets.UTF_8)
        println("Generated converted file at ${outFile.absolutePath}")
    }
}
