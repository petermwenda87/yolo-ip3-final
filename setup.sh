#!/bin/bash
sudo apt update
sudo apt install -y docker.io docker-compose git

# Clone your repository (if needed)
cd /home/vagrant
git clone https://github.com/petermwenda87/yolo.git

# Navigate to the project directory
cd yolo

# Start the containers
sudo docker-compose up -d --build
