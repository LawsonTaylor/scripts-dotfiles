#!/bin/sh

SESSION_NAME="mentorloop"

tmux start-server

tmux new-session -d -s $SESSION_NAME

tmux send-keys "cd ~/Documents/mentorloop/app" C-m
tmux send-keys "meteor npm run dev" C-m

tmux splitw -v -p 25
tmux send-keys "cd ~/Documents/mentorloop/app" C-m
tmux send-keys "meteor npm run test:integration"

tmux splitw -h -p 35
tmux send-keys "cd ~/" C-m
tmux send-keys "cmatrix" C-m

tmux attach-session -t $SESSION_NAME

