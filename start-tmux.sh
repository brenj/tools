#!/bin/bash
#
# Start tmux with a specific configuration.

tmux new-session -d -s 'brenj'
tmux rename-window '~'
tmux new-window -d -n 'bootstrap' -c ~/bootstrap
tmux new-window -d -n 'dotfiles' -c ~/dotfiles
if [ -d ~/Workspace/vialab-main ]; then
  tmux new-window -d -n 'nslab' -c ~/Workspace/vialab-main
fi
tmux new-window -d -n 'temp' -c /tmp
tmux new-window -d -n 'tools' -c ~/tools
tmux -2 attach-session -d -t 'brenj'
