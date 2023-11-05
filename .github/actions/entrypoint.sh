#!/bin/sh

set -e

API_KEY=$1
MONITOR_ID=$2
ACTION=$3

if [ "$ACTION" != "pause" ] && [ "$ACTION" != "resume" ]; then
  echo "Invalid action: $ACTION. Allowed values are pause or resume."
  exit 1
fi

STATUS=0
if [ "$ACTION" = "resume" ]; then
  STATUS=1
fi

RESPONSE=$(curl -X POST "https://api.uptimerobot.com/v2/editMonitor" \
  -H "Cache-Control: no-cache" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -d "api_key=$API_KEY&format=json&id=$MONITOR_ID&status=$STATUS")

echo $RESPONSE
