# 🤖 Deploying Infrastructure with Gemini CLI

In this section, we transition from manual scripting to **AI-Accelerated Deployment**. Instead of writing complex bash scripts, we will use natural language to prompt Gemini to generate and execute our Google Cloud infrastructure.

---

## 💡 How it Works
Gemini Cloud Assist CLI translates your intent into valid `gcloud` commands. This reduces syntax errors and speeds up the deployment lifecycle.



---

## 🎯 The "Master Prompt"
To deploy the entire lab infrastructure in one go, you can use the following structured prompt. 

**Copy and paste this into your Gemini-enabled terminal:**

> "Generate the gcloud commands to:
> 1. Create a custom VPC named **ds-vpc** with no default subnets.
> 2. Add two subnets in **europe-west1**: a public one (**10.0.1.0/24**) and a private one (**10.0.2.0/24**).
> 3. Create a firewall rule **ds-allow-http** to allow traffic on port 80 from any source.
> 4. Deploy an **e2-micro** VM named **ds-pub-web-server** using **Ubuntu 22.04** in the public subnet.
> 5. Use a startup script to install **Nginx** and replace the default page with **'Hello s from ds!'**."

---

## 🛠 Step-by-Step Prompting (Granular Control)

If you prefer to build step-by-step using Gemini, follow this sequence:

### 1️⃣ Networking Phase
**Prompt:** `"Gemini, give me the command to create a custom VPC named ds-vpc and a public subnet in europe-west1 with range 10.0.1.0/24."`

### 2️⃣ Security Phase
**Prompt:** `"Generate a firewall rule for ds-vpc that allows HTTP traffic for all instances."`

### 3️⃣ Compute Phase
**Prompt:** `"Help me launch an Ubuntu 22.04 e2-micro instance in ds-vpc-pub-sub that runs 'apt update && apt install nginx' on startup."`

---

## 🧪 Verification via Gemini
You can even ask Gemini how to check your work!

**Prompt:** `"How do I get the external IP of my 'ds-pub-web-server' and test it with curl using gcloud?"`

**Expected Output:**
Gemini will provide the command to fetch the IP and the `curl` command, confirming the response: 
`Hello s from ds!`

---

## ⚠️ Best Practices for Gemini CLI
* **Be Specific:** Always mention regions, names, and machine types.
* **Context Matters:** If you are in a specific project, tell Gemini to use the current project context.
* **Review Before Running:** Always verify the generated command before hitting Enter to ensure it matches your requirements.
