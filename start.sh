#!/usr/bin/env bash
set -e

echo "============================================"
echo " Smart Dock Scheduler - Backend"
echo "============================================"

cd "$(dirname "$0")/backend"

if [ ! -d "venv" ]; then
  echo "Creating Python virtual environment..."
  python3 -m venv venv
fi

source venv/bin/activate
echo "Installing dependencies..."
pip install -q -r requirements.txt

echo ""
echo "Backend → http://localhost:8000"
echo "API docs → http://localhost:8000/docs"
echo ""
echo ">>> Open a SECOND terminal and run: bash start-frontend.sh <<<"
echo ""
uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload
