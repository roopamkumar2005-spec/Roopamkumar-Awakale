#!/usr/bin/env bash
set -e

echo "============================================"
echo " Smart Dock Scheduler - Frontend"  
echo "============================================"

cd "$(dirname "$0")/frontend"

echo "Installing npm packages (first run ~1 min)..."
npm install

echo ""
echo "Frontend → http://localhost:3000"
echo ""
npm start
