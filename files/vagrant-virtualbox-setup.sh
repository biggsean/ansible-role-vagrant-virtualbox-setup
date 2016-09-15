#!/bin/bash

# chkconfig: 345 33 99
# description: Run the vboxadd setup if start fails

STATUS=$(service vboxadd status)
case "$1" in
  start)
    if [[ $STATUS == *"not currently running"* ]]; then
      service vboxadd setup
    fi
    ;;
  *)
   exit 0
esac
    


