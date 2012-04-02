@echo off

mkdir bin

javac -nowarn -d bin/ src/*.java
jar cfm PicturePuzzle.jar Manifest -C bin com/

rmdir bin

echo Successfully built the application.
