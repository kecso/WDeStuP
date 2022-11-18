@echo off
title Adding a new Python based plugin to your Design Studio
set /P id=What will be the Id of your plugin (example:MyShinyNewPlugin)?
docker-compose exec webgme node ./node_modules/webgme-cli/bin/webgme new plugin --language Python %id%
docker-compose exec webgme npm i
docker-compose cp webgme:/usr/app/webgme-setup.json webgme-setup.json
docker-compose cp webgme:/usr/app/config/config.webgme.js config/config.webgme.js