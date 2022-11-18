# !/bin/bash
echo Please enter the name of your seed:
read id
echo Please enter the name of the input project file:
read input
docker-compose cp $input webgme:/usr/app/$input 
docker-compose exec webgme node ./node_modules/webgme-cli/bin/webgme new seed -f $input $id
docker-compose cp webgme:/usr/app/webgme-setup.json webgme-setup.json
docker-compose cp webgme:/usr/app/config/config.webgme.js config/config.webgme.js