# ▶️ How to Run the Project

This section explains how to run the application locally and on a server (AWS EC2 / Linux VM).
---
## 🖥️Prerequisites
Make sure the following tools are installed on your system:
- Docker
- Docker Compose
- Git

Verify installation:

```bash
docker --version
docker-compose --version
git --version
```
## Step 1: Clone the Repository
```
git clone https://github.com/Nexgensis/devops-assessment.git
cd devops-assessment
```
## Step 2: Run the Project Using Docker Compose (Local)
```
docker-compose up --build
```
## Step 3: Access the Application
```
Service	          URL
Frontend	http://localhost:80
Backend API	http://localhost:8000
```
## Step 4: Stop the Application
```
docker-compose down
```
# ☁️ Run the Project on a Server (AWS EC2 / Linux)
## Step 1: SSH into the Server
```
ssh ubuntu@<SERVER_PUBLIC_IP>
```
## Step 2: Install Docker and Docker Compose
```
sudo apt update -y
sudo apt install docker.io docker-compose -y
sudo usermod -aG docker ubuntu
newgrp docker
```
Verify installation:
```
docker --version
docker-compose --version
```
## Step 3: Clone the Repository on Server
```
git clone https://github.com/Nexgensis/devops-assessment.git
cd devops-assessment
```
## Step 4: Start the Application
```
docker-compose up -d --build
```
## Step 5: Access the Application from Browser
```
Service	                URL
Frontend      	http://<SERVER_PUBLIC_IP>:80
Backend API	    http://<SERVER_PUBLIC_IP>:8000
```
