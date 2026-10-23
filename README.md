# Fitness Tracker Web Application
**College Mini-Project | Department of Computer Science & Engineering**

## Project overview
A full-stack fitness-tracking project with a Core Java HTTP server and an HTML/CSS/JavaScript frontend. The intended features include workout logging, meal/nutrition tracking, water intake, BMI calculations, profile targets, and file-based persistence.

> **Repository status:** The current repository does not yet contain the Java source files or the `web/` frontend described below. Upload the complete `src/`, `web/`, and any required assets before deploying. The Windows batch files are for local development and are not a hosted server.

## Run locally on Windows
Requirements: JDK 17 or newer, with `java` and `javac` available on PATH (or `JAVA_HOME` configured).

1. Put the project source files into `src/com/fitness/` and the frontend in `web/`.
2. Run `compile.bat`.
3. Run `run.bat`.
4. Open http://localhost:8080.

The server must serve the frontend and APIs from the same origin, and it must listen on the port supplied by the hosting platform (usually the `PORT` environment variable) when hosted.

## Project structure expected
```
src/com/fitness/
  Main.java
  FitnessServer.java
  model/
  service/
  util/
web/
  index.html
  css/style.css
  js/app.js
data/
  fitness_records.txt
compile.bat
run.bat
README.md
```

## Deployment
This app uses a Java backend and writes data to a local text file. It is **not a static website** and cannot be deployed correctly to GitHub Pages alone. Deploy it to a Java-capable host (for example, a container host) after the full source is committed. Update the server to bind to `0.0.0.0` and the port from `PORT`; ensure the hosting platform supports persistent storage if fitness records must survive redeployments/restarts. Do not commit secrets or personal fitness data.

## Current limitations
The project source described in the expected structure is not included in this repository yet. The supplied `compile.bat` and `run.bat` scripts are included for Windows local use, but they cannot compile/run until those Java files exist.
