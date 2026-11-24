@echo off
cd /d "%~dp0"
start "" /B cmd /c "timeout /t 2 /nobreak >nul & start http://localhost:8000/index.html"
python -m http.server 8000
