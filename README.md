# Yolo E-commerce App on GKE

## Overview

This project is a full-stack e-commerce web application deployed on **Google Kubernetes Engine (GKE)**. It includes a React frontend, a Node.js/Express backend, and a MongoDB database. The application allows users to browse products, manage carts, and simulate purchases in a modern microservices-style architecture.

This implementation is part of IP4 - Orchestration assignment, focused on deploying containerized applications using Kubernetes.

---

## Technologies Used

- **Frontend**: React (Dockerized)
- **Backend**: Node.js + Express (Dockerized)
- **Database**: MongoDB (via Kubernetes Deployment & StatefulSet)
- **Containerization**: Docker, Docker Compose
- **Orchestration**: Kubernetes (GKE)
- **Cloud Platform**: Google Cloud Platform (GCP)
- **Registry**: DockerHub

---

## Architecture


yolo-ip3-final/
│
├── client/ # React frontend source code
│ └── Dockerfile
│
├── backend/ # Node.js backend source code
│ └── Dockerfile
│
├── k8s/ # Kubernetes YAML configurations
│ ├── client-deployment.yaml
│ ├── frontend-deployment.yaml
│ ├── backend-deployment.yaml
│ ├── mongo-deployment.yaml
│ └── mongo-statefulset.yaml
│
├── README.md
└── explanation.md


---

## Docker Images

- **Frontend**: `petermwenda/yolo-client:v1.0.0`
- **Backend**: `petermwenda/yolo-backend:v1.0.1`
- **MongoDB**: `mongo:latest` (official)

---

## Architecture

User
│
▼
Frontend (React, port 3000)
│
▼
Backend API (Node.js/Express, port 5000)
│
▼
MongoDB (NoSQL Database)


All services are containerized using Docker and deployed on GKE via Kubernetes manifests. MongoDB can be run using either a Deployment or a StatefulSet depending on persistence requirements.

---

## Deployment Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/petermwenda87/yolo-ip3-final
cd yolo-ip3-final

# Backend
cd backend
docker build -t petermwenda/yolo-backend:v1.0.1 .
docker push petermwenda/yolo-backend:v1.0.1

# Frontend
cd ../client
docker build -t petermwenda/yolo-frontend:v1.0.1 .
docker push petermwenda/yolo-frontend:v1.0.1

gcloud container clusters get-credentials cluster-1 --zone us-central1-a --project platinum-wave-460312-u3

# Apply Kubernetes manifests
kubectl apply -f k8s/

# Check Pod Status
bash
Copy
Edit
kubectl get pods

#  Access the Frontend
Expose the frontend via a LoadBalancer or use kubectl port-forward:

bash
Copy
Edit
kubectl port-forward svc/frontend-service 3000:3000
