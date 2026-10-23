@echo off
setlocal
title Compile Fitness Tracker Project

if not exist "src\com\fitness\Main.java" (
  echo [ERROR] Missing src\com\fitness\Main.java
  echo Upload the Java source tree before compiling.
  exit /b 1
)

if not exist "bin" mkdir bin
javac -encoding UTF-8 -d bin src\com\fitness\*.java src\com\fitness\model\*.java src\com\fitness\service\*.java src\com\fitness\util\*.java
if errorlevel 1 (
  echo [ERROR] Compilation failed.
  exit /b 1
)
echo [SUCCESS] Compiled into bin.
