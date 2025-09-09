#!/bin/bash
set -e

SSH_USER="$1"
SSH_HOST="$2"

scp ./* "$SSH_USER@$SSH_HOST:/var/www/html/"
ssh "$SSH_USER@$SSH_HOST" "sudo systemctl restart nginx"
