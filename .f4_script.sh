#!/bin/bash

tmux select-pane -t 0

tmux send-keys ':w! jtemp.py'
tmux send-keys 'Enter'

tmux select-pane -t 1 
tmux send-keys '%load jtemp.py'
tmux send-keys 'Enter'
tmux send-keys 'Escape'
tmux send-keys 'ddggdd'
tmux send-keys 'Escape'
tmux send-keys 'Enter'


tmux select-pane -t 0
tmux send-keys ':!rm jtemp.py'
tmux send-keys 'Enter'
tmux send-keys 'Enter'
