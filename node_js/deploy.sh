# Directory Switch
cd ./COMON-Back-End-Node

# Git Pull
git pull

# Build Docker Image
docker build -t node_express .

# Deploy Docker Container
docker run -p 3000:3000 --network db -d
