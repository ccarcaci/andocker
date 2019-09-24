# Prerequisites: Docker, Docker Compose, Chrome

export butomoVersion=8.1

docker-compose down
yes | docker system prune
docker-compose build --build-arg butomoVersion=$butomoVersion emulator expo
docker-compose up

# exec google-chrome --new-window http://localhost:6080 > /dev/null &
