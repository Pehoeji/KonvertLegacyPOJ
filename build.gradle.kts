plugins {
    kotlin("multiplatform") version "2.0.20"
}

repositories {
    mavenCentral()
}

kotlin {
    jvm()
    js {
        browser()
        nodejs()
    }
    macosX64()
    macosArm64()
    iosX64()
    iosSimulatorArm64()
    iosArm64()
    linuxX64()

    sourceSets {
        commonTest {
            dependencies {
                implementation(kotlin("test"))
            }
        }
    }
}
