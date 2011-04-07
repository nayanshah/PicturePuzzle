#!/bin/bash

javac -nowarn -d bin/ src/*.java 
jar cfm PicturePuzzle.jar Manifest -C bin com/
chmod 755 PicturePuzzle.jar

echo Successfully build the application.

