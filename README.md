 HEAD
# 🛒 Yolo E-commerce App - Automated Deployment with Ansible + Kubernetes

This project is a containerized e-commerce application deployed using **Ansible** and **Kubernetes**. It includes a React frontend, Node.js backend, and MongoDB for data storage.

The goal is to automate the deployment of a modern full-stack app using infrastructure-as-code tools.

---

## Tech Stack

- **Frontend**: React (client/)
- **Backend**: Node.js + Express (backend/)
- **Database**: MongoDB
- **Containerization**: Docker
- **Orchestration**: Kubernetes
- **Automation**: Ansible

---

## Features

- Fully containerized frontend and backend apps
- MongoDB connected as a service
- Kubernetes manifests for deployment and services
- Ansible playbook to automate:
  - Docker image builds
  - Kubernetes deployments
- Clean folder structure and reusable configuration

---

## How to Run the Project

### 1. Clone the repo

```bash
git clone https://github.com/petermwenda87/yolo.git
cd yolo/ansible
yolo/
├── ansible/
│   ├── playbook.yml
=======
# 🐳 YOLO E-commerce App — Kubernetes & Ansible Deployment

This project is a containerized e-commerce web application deployed to a local Kubernetes cluster using Minikube. It includes automation with **Ansible** and follows DevOps best practices for infrastructure as code and repeatable deployments.

---

## 📁 Project Structure

```bash
.
├── client/                     # React frontend
├── backend/                    # Node.js + Express backend
├── k8s/                        # Kubernetes manifests
│   ├── frontend-deployment.yaml
│   ├── backend-deployment.yaml
│   ├── mongo.yaml
│   ├── frontend-service.yaml
│   └── backend-service.yaml
├── ansible/                   # Ansible playbooks
│   ├── deploy.yaml
>>>>>>> df790eb6f1627ad3dbb1c774253cb8ac2ffc0cf6
│   └── roles/
│       └── deploy/
│           └── tasks/
│               └── main.yaml
<<<<<<< HEAD
├── backend/
│   └── (Node.js backend code)
├── client/
│   └── (React frontend code)
├── k8s/
│   ├── backend-deployment.yaml
│   ├── backend-service.yaml
│   ├── frontend-deployment.yaml
│   ├── frontend-service.yaml
│   ├── mongo-deployment.yaml
│   └── mongo-service.yaml 
└── README.md
# TODO: Add monitoring tools like Prometheus
=======
├── Dockerfile(s)              # For client and backend
├── docker-compose.yaml        # For local development and testing
