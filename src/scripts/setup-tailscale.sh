#!/bin/bash
set -e

AUTHKEY="$1"
HOSTNAME="$2"

curl -fsSL https://tailscale.com/install.sh | sh
sudo tailscale up \
  --authkey="$AUTHKEY" \
  --hostname="$HOSTNAME" \
  --accept-dns=false \
  --ssh
