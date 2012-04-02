#!/bin/bash

# Create temp directory for classes
mkdir bin

# Compile and create a jar
javac -nowarn -d bin/ src/*.java
jar cfm PicturePuzzle.jar Manifest assets/ -C bin com/
chmod 755 PicturePuzzle.jar

# Delete bin/ directory
/bin/rm -rf bin

echo Successfully built the application.
