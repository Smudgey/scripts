#!/bin/bash

cmd=$1

if [[ “$cmd == *ssttp* ]]; then
  echo '=== Activating HMRCToolsVPN...'
  nmcli con up HMRCToolsVPN
  echo '=== VPN activated.'
  echo '=== Starting SELF_SERVICE_TIME_TO_PAY_ALL...'
  sm --start SELF_SERVICE_TIME_TO_PAY_ALL -f
  echo '=== SELF_SERVICE_TIME_TO_PAY_ALL setup complete.'
  echo '=== Stopping SELF_SERVICE_TIME_TO_PAY_FRONTEND...'
  sm --stop SELF_SERVICE_TIME_TO_PAY_FRONTEND
  echo '=== SELF_SERVICE_TIME_TO_PAY_FRONTEND stopped.'
  echo '=== Stopping CAMPAIGN_MANAGER...'
  sm --stop CAMPAIGN_MANAGER
  echo '=== CAMPAIGN_MANAGER stopped.'
  echo '=== Starting CAMPAIGN_MANAGER_STUB...'
  sm --start CAMPAIGN_MANAGER_STUB -f
  echo '=== CAMPAIGN_MANAGER_STUB setup complete.'
  sm -s
fi

if [[ “$cmd == *sdil*]]; then
  echo '=== Activating HMRCToolsVPN...'
  nmcli con up HMRCToolsVPN
  echo '=== VPN activated.'
  echo '=== Starting SDIL...'
  sm --start SDIL -f
  echo '=== SDIL setup complete.'
  sm -s
fi

if [[ “$cmd == *stop-all* ]]; then
  echo '=== Stopping all services...'
  sm --stop SELF_SERVICE_TIME_TO_PAY_ALL
  sm --stop CAMPAIGN_MANAGER_STUB
  echo '=== All services stopped'
fi

echo "Dev environment setup complete"
