# Switch Directory
cd ./COMON-Back-End-Spring

# Git Pull
git pull

# chmod
chmod +x gradlew

# Build Gradle
./gradlew clean build -x test

# Build Docker Image
sudo docker build -t spring .

# Deploy Docker Image
docker run -p 8000:$8080 --network db -d
