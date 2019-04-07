#!/bin/bash
tmux send-keys ':set nowrapscan'
tmux send-keys 'Enter'

tmux send-keys '/#'
tmux send-keys 'Enter'
tmux send-keys 'kVggy'

tmux send-keys ':set wrapscan'
tmux send-keys 'Enter'

