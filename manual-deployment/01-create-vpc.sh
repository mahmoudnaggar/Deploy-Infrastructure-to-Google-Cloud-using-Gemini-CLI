#!/bin/bash
# Description: Create a Custom VPC Network
# Purpose: This acts as your isolated private cloud environment.

echo "🚀 Creating Custom VPC: ds-vpc..."

gcloud compute networks create ds-vpc \
  --subnet-mode=custom

echo "✅ VPC created successfully."
echo "💡 Expected Output: A summary table showing 'ds-vpc' with 'CUSTOM' subnet mode."
