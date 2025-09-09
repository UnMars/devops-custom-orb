#!/bin/bash
set -e

AUTHKEY="$1"
HOSTNAME="${2:-circleci-runner}"

echo "Setting up Tailscale with hostname: $HOSTNAME"

# Start Tailscale
sudo tailscale up --authkey="$AUTHKEY" --hostname="$HOSTNAME" --accept-routes

# Wait for connection
echo "Waiting for Tailscale to connect..."
sleep 10

# Check status
tailscale status
