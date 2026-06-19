@echo off
echo ============================================
echo  Smart Dock Scheduler - Starting Frontend
echo ============================================

cd /d "%~dp0frontend"

echo Installing npm packages (first run takes ~1 min)...
npm install

echo.
echo Frontend starting at http://localhost:3000
echo.
npm start
