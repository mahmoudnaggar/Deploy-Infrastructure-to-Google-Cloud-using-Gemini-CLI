#!/bin/bash
# Description: Create Firewall Rule for HTTP
# Purpose: Allowing external traffic to reach our web server on port 80.

echo "🛡️ Configuring Firewall: ds-allow-http..."

gcloud compute firewall-rules create ds-allow-http \
  --network=ds-vpc \
  --allow=tcp:80 \
  --source-ranges=0.0.0.0/0 \
  --description="Allow HTTP traffic from anywhere"

echo "✅ Firewall rule active."
echo "💡 Expected Output: Summary showing rule name, network, and allowed ports (tcp:80)."
