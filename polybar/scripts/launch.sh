#!/bin/bash

# Terminate all polybars
killall -q polybar

# Wait until they're dead
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar left & polybar right 

if [ $? -eq 0 ]; then
  echo "Polybar launched..."
else
  echo "Issue with Polybar..."
fi


