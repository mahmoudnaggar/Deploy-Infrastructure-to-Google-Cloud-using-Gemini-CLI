# ☁️ Google Cloud Infrastructure Deployment Lab
### *Building with Precision, Accelerating with AI*

This lab is designed to bridge the gap between foundational cloud networking and modern AI-driven operations. You will build a real-world web server environment from scratch, first manually to understand the "why," and then using **Gemini CLI** to experience the "how" of AI acceleration.

---

## 🎯 Objective
This lab guides you through deploying a complete web server infrastructure on Google Cloud, including:

* **Custom VPC:** For isolated network control.
* **Tiered Subnets:** Differentiating between Public and Private traffic.
* **Security Layers:** Firewall rules to permit web traffic.
* **Compute Engine VM:** Highly available virtual instances.
* **Automated Nginx Installation:** Using Startup Scripts.
* **Infrastructure Verification:** Using `curl` to confirm deployment.

---

## 🏗 Architecture Overview
The traffic flow follows this logical path:

**Internet** ➔ **Firewall** (Port 80) ➔ **Public Subnet** ➔ **VM (Ubuntu)** ➔ **Nginx** ➔ **Response: "Hello from ds!"**

> **Mental Model:** Think of the **VPC** as your "Building," **Subnets** as "Rooms," and the **Firewall** as the "Security Guard" at the door.

---

## 🧠 Prerequisites
Before starting, ensure you have:
* [ ] A **Google Cloud Project**.
* [ ] **gcloud SDK** installed and initialized: `gcloud init`.
* [ ] **Gemini AI Extension** installed for the CLI.
* [ ] **Compute Engine API** enabled.

---
 
