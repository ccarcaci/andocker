# Prerequisites: Docker, Docker Compose, Chrome

docker-compose down
yes | docker system prune
docker image rm -f ecosystem_expo:latest
(cd ../code; npm i; npm audit fix)
docker-compose up

# exec google-chrome --new-window http://localhost:6080 > /dev/null &
