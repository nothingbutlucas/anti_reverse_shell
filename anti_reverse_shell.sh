#!/bin/bash

# Description:
# Verifys if there is a process of a possible reverse shell running on your system

# Usage:
# I recommend put this script on your path
# Example:
#   mv anti_reverse_shell ${HOME}/.local/bin/
# And then run it on a crontask
#   * * * * * ~/.local/bin/anti_reverse_shell.sh

if [[ $( ps aux | grep "bash -i" | wc -l ) -gt 1 ]]; then
  kill -9 $(ps aux | grep "bash -i" | awk '{print $2}')
  notify-send "[ ! ] I killed the possible reverse shell" -u critical
fi

# Or you can do something like

# if [[ $( ps aux | grep "bash -i" | wc -l ) -gt 1 ]]; then
#     notify-send "[ ! ] Possible reverse shell look at these processes: " "$(ps aux | grep "bash -i" | awk '{print $1, $2, $9, $11, $12, $13, $14}')" -u critical
# fi

exit 0
