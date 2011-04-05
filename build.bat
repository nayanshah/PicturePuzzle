@echo off

javac -nowarn -d bin/ src/*.java 
jar cfm PicturePuzzle.jar Manifest -C bin com/

echo Successfully built the application.
