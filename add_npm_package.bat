@echo off
title Adding a new Python based plugin to your Design Studio
set /P id=Please enter the name of the npm package (example:my_package)?
echo %id%
docker-compose exec webgme npm i -s %id%
docker-compose exec webgme npm i
docker-compose cp webgme:/usr/app/package.json package.json