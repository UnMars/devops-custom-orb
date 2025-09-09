#!/bin/bash
set -e

echo "Installing Tailscale..."
curl -fsSL https://tailscale.com/install.sh | sh
tailscale version
