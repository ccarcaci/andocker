# Prerequisites: Docker, Docker Compose, Chrome

export butomoVersion=8.1
yes | docker system prune

docker-compose build --build-arg butomoVersion=$butomoVersion android-emulator
docker-compose up -d
exec google-chrome --new-window http://localhost:6080 > /dev/null &

echo "To view the emulator press F5 on Chrome (localhost:6080) when android-emulator service is loaded"
