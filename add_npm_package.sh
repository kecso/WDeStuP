# !/bin/bash
echo Please enter the name of npm package:
read id
docker-compose exec webgme npm i -s $id
docker-compose exec webgme npm i
docker-compose cp webgme:/usr/app/package.json package.json