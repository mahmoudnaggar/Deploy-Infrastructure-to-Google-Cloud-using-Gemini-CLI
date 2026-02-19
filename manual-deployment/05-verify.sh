#!/bin/bash
# Description: Verify Deployment
# Purpose: Testing if the web server is actually responding.

echo "🔍 Fetching External IP..."
EXTERNAL_IP=$(gcloud compute instances describe ds-pub-web-server \
  --zone=europe-west1-b \
  --format='get(networkInterfaces[0].accessConfigs[0].natIP)')

if [ -z "$EXTERNAL_IP" ]; then
    echo "❌ Could not find External IP. Is the VM running?"
else
    echo "🌐 Sending request to http://$EXTERNAL_IP ..."
    echo "----------------------------------------"
    curl http://$EXTERNAL_IP
    echo -e "\n----------------------------------------"
    echo "✅ Success! If you see 'Hello s from ds!', your lab is complete."
fi
