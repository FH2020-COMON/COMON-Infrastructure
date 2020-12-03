# Switch Directory
cd ~/COMON-Back-End-Spring

# Git Pull
git pull

# chmod
chmod +x gradlew

local=$(git rev-parse HEAD)
echo $local

target=$(git rev-parse origin/main)
echo $target

if [$local != $target] then
    # Build Gradle
    echo "Gradle build.."
    ./gradlew clean build -x test

    # Build Docker Image
    echo "Docker Image build.."
    sudo docker build -t spring .

    echo "Stopping Docker Container.."
    sudo docker container stop spring

    echo "Removing Docker Container.."
    sudo docker container rm spring

    # Deploy Docker Image
    docker run -p 8000:8080 --network db --name spring -d
fi