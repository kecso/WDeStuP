@echo off
title Adding a new NPM package to your Design Studio
set /P id=Please enter the name of the npm package (example:my_package)?
docker-compose exec webgme npm i -s %id%
docker-compose exec webgme npm i
docker-compose cp webgme:/usr/app/package.json package.json