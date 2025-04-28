# Overview
This project involved the containerization and deployment of a full-stack yolo application using Docker.


# Requirements
Install the docker engine here:
- [Docker](https://docs.docker.com/engine/install/) 

## How to launch the application 


![Alt text](image.png)

## How to run the app
Use vagrant up --provison command

## Docker Setup

This app is fully containerized using Docker and Docker Compose.

To learn more about how the setup works (images used, networking, volumes, and best practices), check out the [explanation.md](./explanation.md) file.

### DockerHub Images

- Frontend: [petermwenda/brian-yolo-client:v1.0.0](https://hub.docker.com/r/petermwenda/brian-yolo-client)
- Backend: [petermwenda/brian-yolo-backend:v1.0.0](https://hub.docker.com/r/petermwenda/brian-yolo-backend)
## IP2 Docker Project

This project sets up a microservices architecture using Docker Compose. It includes:
- A React frontend service
- A NodeJS backend service
- A MongoDB database service

I customized the Docker network with a specific subnet and bridge driver. I also edited the docker-compose.yaml to use my own DockerHub images. All services were built and ran successfully, demonstrating containerized development and deployment.

