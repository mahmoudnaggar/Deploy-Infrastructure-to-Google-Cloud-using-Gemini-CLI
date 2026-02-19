Google Cloud Infrastructure Deployment Lab
🎯 Objective

This lab guides you through deploying a complete web server infrastructure on Google Cloud, including:

Custom VPC

Public and Private Subnets

Firewall Rule

Compute Engine VM

Automated Nginx Installation

Infrastructure verification using curl

You will deploy the infrastructure in two ways:

Manual deployment using gcloud

Automated deployment using Gemini CLI

🏗 Architecture Overview

Internet
↓
Firewall (Allow TCP 80)
↓
Public Subnet
↓
VM (Ubuntu 22.04 + Nginx)
↓
“Hello from ds!”

🧠 Prerequisites

Google Cloud Project

gcloud SDK installed

Gemini CLI installed

Compute Engine API enabled
