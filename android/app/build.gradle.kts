allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory =
    rootProject.layout.buildDirectory
        .dir("../../build")
        .get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}

subprojects {
    afterEvaluate {
        val androidExt = extensions.findByName("android")
        if (androidExt != null) {
            try {
                val setter = androidExt.javaClass.getMethod("setCompileSdk", Int::class.javaPrimitiveType)
                setter.invoke(androidExt, 36)
            } catch (_: Exception) {
                try {
                    val prop = androidExt.javaClass.getMethod("getCompileSdkVersion")
                    val current = prop.invoke(androidExt)
                    if (current != null) {
                        val setVersion = androidExt.javaClass.getMethod("setCompileSdkVersion", Int::class.javaPrimitiveType)
                        setVersion.invoke(androidExt, 36)
                    }
                } catch (_: Exception) {
                }
            }
        }
    }
}

subprojects {
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
