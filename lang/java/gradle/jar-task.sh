#!/bin/bash

cat << EOF >> build.gradle
tasks.jar {
    manifest {
        attributes["Main-Class"] = "com.andmal.Main"
    }
    duplicatesStrategy = DuplicatesStrategy.EXCLUDE
    from sourceSets.main.output
    dependsOn(configurations.runtimeClasspath)
    from {
            configurations.runtimeClasspath.findAll { it.name.endsWith('jar') }.collect { zipTree(it) }
    }
}

EOF


