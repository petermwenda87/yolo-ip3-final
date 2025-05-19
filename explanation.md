# Explanation: Yolo E-commerce App Deployment on Google Kubernetes Engine (GKE)

## Introduction

This explanation outlines the architecture, deployment process, and tools used to successfully deploy the Yolo e-commerce application on Google Kubernetes Engine (GKE) as part of IP4 – Orchestration.

The project follows a microservices-based architecture using Docker and Kubernetes for container orchestration. It demonstrates a production-style deployment of a full-stack e-commerce web application with persistent data storage and scalable services.

---

## Architecture

The application is made up of three main components:

- **Frontend (React)**: Provides the user interface for browsing products and managing the cart.
- **Backend (Node.js + Express)**: Handles API logic, authentication, and database communication.
- **Database (MongoDB)**: Stores product data, user sessions, and cart information.

### Kubernetes Setup:

- **Deployments**: Used for the frontend, backend, and MongoDB (as an optional stateless pod).
- **StatefulSet**: MongoDB also runs as a StatefulSet to ensure stable network identity and persistent volume usage.
- **Services**: ClusterIP services expose each app internally, while a LoadBalancer service is used to expose the frontend to the internet.
- **Persistent Volume Claims (PVCs)**: Ensure MongoDB data persists across restarts.

---

## Tools and Technologies

- **Docker**: Used to containerize the frontend and backend.
- **DockerHub**: Stores the custom-built Docker images.
- **Google Cloud Platform (GCP)**: Provides the cloud infrastructure for hosting the Kubernetes cluster.
- **Google Kubernetes Engine (GKE)**: Manages and orchestrates the application containers.
- **kubectl**: CLI tool for managing the Kubernetes cluster.
- **MongoDB**: Official Docker image used for NoSQL database.

---

## Step-by-Step Summary

1. **Dockerization**:
   - Created Dockerfiles for both frontend and backend.
   - Built and pushed images to DockerHub under:
     - `petermwenda/yolo-frontend:v1.0.0`
     - `petermwenda/yolo-backend:v1.0.1`

2. **Kubernetes Manifests**:
   - Created YAML files for deployments and services for each component.
   - Ensured environment variables and image references were correct.

3. **MongoDB Persistence**:
   - Implemented both a standard Deployment and an optional StatefulSet with a PVC to maintain persistent MongoDB data.

4. **GKE Deployment**:
   - Used `gcloud` to authenticate and connect to the GKE cluster.
   - Applied all manifests using `kubectl apply -f k8s/`.

5. **Verification**:
   - Ran `kubectl get pods` to ensure all pods were in a `Running` state.
   - Confirmed backend logs were displaying the expected "Server listening on port 5000" message.
   - Verified the frontend was accessible via the external IP provided by the LoadBalancer service.

---

## Challenges and Resolutions

- **DockerHub authentication**: Faced permission issues when pushing images; resolved by resetting the password and logging in via Cloud Shell.
- **Mongoose connection deprecation warning**: Fixed by updating `mongoose.connect()` logic to be async/await-based.
- **GKE auth error**: Resolved by re-authenticating `gcloud` with the correct account and resetting credentials using `gcloud auth login`.

---

## Conclusion

This deployment successfully demonstrates how to build, containerize, and orchestrate a microservice-based web application on GKE using Docker, Kubernetes, and persistent volumes. It reflects real-world DevOps practices and cloud-native application design.


