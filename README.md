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
│   └── roles/
│       └── deploy/
│           └── tasks/
│               └── main.yaml
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
