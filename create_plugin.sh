# !/bin/bash
echo Please enter the name of your plugin:
read id
docker-compose exec webgme node ./node_modules/webgme-cli/bin/webgme new plugin --language Python $id
docker-compose exec webgme npm i
docker-compose cp webgme:/usr/app/webgme-setup.json webgme-setup.json
docker-compose cp webgme:/usr/app/config/config.webgme.js config/config.webgme.js