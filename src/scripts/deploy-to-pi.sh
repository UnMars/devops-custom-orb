#!/bin/bash
set -e

SSH_USER="$1"
SSH_HOST="$2"

scp -o StrictHostKeyChecking=no ./* "$SSH_USER@$SSH_HOST:/var/www/html/"
ssh -o StrictHostKeyChecking=no "$SSH_USER@$SSH_HOST" "sudo systemctl restart nginx"
