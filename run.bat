@echo off
setlocal
title Fitness Tracker Server

if not exist "bin\com\fitness\Main.class" call compile.bat
if errorlevel 1 exit /b 1

echo Starting Fitness Tracker at http://localhost:8080
start "" http://localhost:8080
java -cp bin com.fitness.Main 8080
