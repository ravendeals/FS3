#!/bin/bash
# Everything is inside toji-project/
cd toji-project

# Install Python deps
pip install -r requirements.txt

# Start backend
cd backend
python main.py &

# Start bot
cd ../bot
python toji_bot.py &

# Start webapp
cd ../webapp
npm install
npm run dev &

wait
