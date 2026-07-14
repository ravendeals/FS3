#!/bin/bash
# Start backend
cd backend
pip install -r ../requirements.txt
python main.py &

# Start bot
cd ../bot
python toji_bot.py &

# Start webapp
cd ../webapp
npm install
npm run dev &

# Keep alive
wait
