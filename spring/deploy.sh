# Switch Directory
cd ./{spring_path}

# Git Pull
git pull

# chmod
chmod +x gradlew

# Build Gradle
./gradlew clean build -x test

# Build Docker Image
sudo docker build -t spring .

# Deploy Docker Image
docker run -p {spring_port}:{spring_port} --network {db_network_name} -d
