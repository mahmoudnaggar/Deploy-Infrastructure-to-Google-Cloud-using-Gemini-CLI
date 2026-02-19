#!/bin/bash
# Description: Launch VM with Startup Script
# Purpose: Deploying the server and automatically installing Nginx.

# First, ensure the startup-script exists
if [ ! -f ../startup-script/install-nginx.sh ]; then
    echo "❌ Error: startup-script/install-nginx.sh not found!"
    exit 1
fi

echo "🖥️ Launching VM Instance: ds-pub-web-server..."

gcloud compute instances create ds-pub-web-server \
  --zone=europe-west1-b \
  --machine-type=e2-micro \
  --subnet=ds-vpc-pub-sub \
  --image-family=ubuntu-2204-lts \
  --image-project=ubuntu-os-cloud \
  --metadata-from-file startup-script=../startup-script/install-nginx.sh

echo "✅ VM is booting up..."
echo "💡 Expected Output: Table showing instance name, zone, and its External IP address."
