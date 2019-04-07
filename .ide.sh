#!/bin/bash

tmux new \; split-window \; send-keys 'clear' C-m 'ipython3' C-m \; select-pane -U \; send-keys 'clear' C-m 

