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
│   └── roles/
│       └── deploy/
│           └── tasks/
│               └── main.yaml
├── Dockerfile(s)              # For client and backend
├── docker-compose.yaml        # For local Docker testing
└── README.md
