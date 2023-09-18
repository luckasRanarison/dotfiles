#!/usr/bin/env bash

set -g status-bg "#1a1b26"
set -g message-style bg="#1a1b26"

set -g status-left-length 45
set -g status-left "#[fg=#7aa2f7] Tmux  #[fg=#fb9c63,nobold] Session   #[bold]#S  "

set -g pane-border-style fg="#414868"
set -g pane-active-border-style fg="#7aa2f7"

set -g popup-border-lines rounded
set -g popup-border-style fg="#414868"

set -g window-status-current-format "#[fg=white,bold] #I #W"
set -g window-status-format "#[fg=#4c5378,nobold,noitalics,nounderscore] #I #W"

set -g status-right "#[fg=#bdc7f2] #H  #[fg=#7dcfff] %Y-%m-%d  %H:%M "

set -g window-status-separator "#[fg=#414868] | "
