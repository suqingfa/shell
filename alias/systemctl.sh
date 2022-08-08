#!/usr/bin/env sh

if ! $(type systemctl &> /dev/null); then
  return 0
fi

alias sc='sudo systemctl'

alias sc-status='sudo systemctl status'

alias sc-start='sudo systemctl start'
alias sc-restart='sudo systemctl restart'
alias sc-stop='sudo systemctl stop'

alias sc-enable='sudo systemctl enable'
alias sc-disable='sudo systemctl disable'

alias sc-daemon-reload='sudo systemctl daemon-reload'

alias sc-reboot='sudo systemctl reboot'