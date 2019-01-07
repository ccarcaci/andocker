# Prerequisites: Docker, Docker Compose, Chrome

export butomoVersion=8.1

yes | docker system prune

docker pull butomo1989/docker-android-x86-$butomoVersion

docker-compose build --build-arg butomoVersion=$butomoVersion
docker-compose up -d

google-chrome --new-window http://localhost:6080
