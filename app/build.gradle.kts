
plugins {
    alias(libs.plugins.jvm)

    //application
    id("io.ktor.plugin") version "2.3.12"

}

repositories {
    mavenCentral()
}

dependencies {
    implementation(libs.guava)
    testImplementation(libs.junit.jupiter.engine)
    testImplementation("org.jetbrains.kotlin:kotlin-test-junit5")
    testRuntimeOnly("org.junit.platform:junit-platform-launcher")
}

application {
    mainClass = "demo.AppKt"
}

tasks.named<Test>("test") {
    useJUnitPlatform()
}
