#!/bin/bash

tmux select-pane -t 0
tmux send-keys ':!rm jtemp.py'
tmux send-keys 'Enter'
tmux send-keys 'Enter'

tmux send-keys '/#'
tmux send-keys 'Enter'
tmux send-keys 'kVNj'
tmux send-keys ':w jtemp.py'
tmux send-keys 'Enter'

tmux send-keys ':!while [ ! -f jtemp.py ]; do sleep .1; done'

tmux send-keys 'Enter'
tmux send-keys 'Enter'

tmux select-pane -t 1 
tmux send-keys '%load jtemp.py'
tmux send-keys 'Enter'
tmux send-keys 'Escape'
tmux send-keys 'ddddggdd'
tmux send-keys 'Escape'
tmux send-keys 'Enter'


tmux select-pane -t 0
tmux send-keys ':!rm jtemp.py'
tmux send-keys 'Enter'
tmux send-keys 'Enter'
