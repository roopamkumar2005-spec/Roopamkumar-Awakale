@echo off
echo ============================================
echo  Smart Dock Scheduler - Starting Backend
echo ============================================

cd /d "%~dp0backend"

:: Create and activate virtual environment if it doesn't exist
if not exist "venv" (
    echo Creating Python virtual environment...
    python -m venv venv
)

echo Activating virtual environment...
call venv\Scripts\activate.bat

echo Installing dependencies...
pip install -q -r requirements.txt

echo.
echo Backend starting at http://localhost:8000
echo API docs at   http://localhost:8000/docs
echo.
echo *** Open a SECOND terminal and run start-frontend.bat ***
echo.
uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload
