#!/bin/bash
# Description: Create Public and Private Subnets
# Purpose: Segmenting the network into logical zones.

echo "🌐 Creating Public Subnet (ds-vpc-pub-sub)..."
gcloud compute networks subnets create ds-vpc-pub-sub \
  --network=ds-vpc \
  --region=europe-west1 \
  --range=10.0.1.0/24

echo "🔒 Creating Private Subnet (ds-vpc-priv-sub)..."
gcloud compute networks subnets create ds-vpc-priv-sub \
  --network=ds-vpc \
  --region=europe-west1 \
  --range=10.0.2.0/24

echo "✅ Subnets created in europe-west1."
echo "💡 Expected Output: Table showing names, region, and IP ranges (10.0.1.0/24 and 10.0.2.0/24)."
