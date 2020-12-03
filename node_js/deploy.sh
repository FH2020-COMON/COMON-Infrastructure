# Directory Switch
cd ~/COMON-Back-End-Node

git fetch

local=$(git rev-parse HEAD)
echo $local

target=$(git rev-parse origin/main)
echo $target

if [$local != $target] then
    # Git Pull
    echo "Pull from Git.."
    git pull

    # Build Docker Image
    echo "Docker Image build.."
    sudo docker build -t node_express .

    # Stop Docker Container
    echo "Stopping Docker Container.."
    sudo docker container stop express
    
    # Remove Docker Container
    echo "Removing Docker Container.."
    sudo docker container rm express

    # Deploy Docker Container
    sudo docker run -p 3000:3000 --network db --name express -d
fi