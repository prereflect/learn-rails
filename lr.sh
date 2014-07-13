#!/bin/bash
 
cd  ~/rails_projects/learn-rails
   
tmux start-server
tmux new-session -d -s lr -n root
tmux new-window -t lr:2 -n console
tmux new-window -t lr:3 -n config
tmux new-window -t lr:4 -n views
tmux new-window -t lr:5 -n controllers
tmux new-window -t lr:6 -n spec
tmux new-window -t lr:7 -n webrick
tmux new-window -t lr:8 -n git
tmux new-window -t lr:9 -n log
   
tmux send-keys -t lr:2 "cd ~/rails_projects/learn-rails/;                 rails c --sandbox" C-m
tmux send-keys -t lr:3 "cd ~/rails_projects/learn-rails/config/;          ls -la" C-m
tmux send-keys -t lr:4 "cd ~/rails_projects/learn-rails/app/views/;       ls -la" C-m
tmux send-keys -t lr:5 "cd ~/rails_projects/learn-rails/app/controllers/; ls -la" C-m
tmux send-keys -t lr:6 "cd ~/rails_projects/learn-rails/spec/;            ls -la" C-m
tmux send-keys -t lr:7 "cd ~/rails_projects/learn-rails/;                 rails s" C-m
tmux send-keys -t lr:8                                                    "git status" C-m
tmux send-keys -t lr:9 "cd ~/rails_projects/learn-rails/log/;             ls -la" C-m
   
tmux select-window -t lr:8
tmux attach-session -t lr
