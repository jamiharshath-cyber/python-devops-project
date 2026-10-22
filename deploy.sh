
#!/bin/bash
set -e

echo "Starting deployment..."

echo "Pulling latest Docker image..."
docker pull harshathjami/python-devops-app:latest

echo "Stopping and removing old container..."
docker rm -f python-devops-container 2>/dev/null || true

echo "Starting new container..."
docker run -d \
  --name python-devops-container \
  --restart unless-stopped \
  -p 8000:8000 \
  harshathjami/python-devops-app:latest

echo "Deployment completed!"
docker ps
