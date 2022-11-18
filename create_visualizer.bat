@echo off
title Adding a new visualizer to your Design Studio
set /P id=What will be the Id of your visualizer (example:MyVizzy)?
docker-compose exec webgme node ./node_modules/webgme-cli/bin/webgme new viz %id%
docker-compose exec webgme npm i
docker-compose cp webgme:/usr/app/webgme-setup.json webgme-setup.json
docker-compose cp webgme:/usr/app/config/config.webgme.js config/config.webgme.js