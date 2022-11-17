@echo off
title Adding a new Python based plugin to your Design Studio
set /P id=What will be the Id of your seed (example:MyGreatSeed)?
set /P input=What is the name of the project file you want to use (example:myproject.webgmex)?
docker-compose cp %input% webgme:/usr/app/%input% 
docker-compose exec webgme node ./node_modules/webgme-cli/bin/webgme new seed -f %input% %id%
docker-compose cp webgme:/usr/app/webgme-setup.json webgme-setup.json
docker-compose cp webgme:/usr/app/config/config.webgme.js config/config.webgme.js