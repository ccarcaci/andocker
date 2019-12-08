docker-compose down
yes | docker system prune

if [ "$1" == "--rebuild-ecosystem" ]; then
  docker image rm -f ecosystem_expo:latest
fi

(cd ../code; rm -rf .expo; rm -rf node_modules; npm i)
docker-compose up
