# Directory Switch
cd ./{node_express_path}

# Git Pull
git pull

# Build Docker Image
docker build -t node_express .

# Deploy Docker Container
docker run -p {node_express_port}:{node_express_port} --network {db_network_name} -d
