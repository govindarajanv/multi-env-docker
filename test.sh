#!/bin/bash

BASE_SITE=my-docker-app.com
# dev
export NODE_ENV=dev
export PORT=8000
export VIRTUAL_HOST=$NODE_ENV.$BASE_SITE
docker-compose -p ${VIRTUAL_HOST} up -d

# qa
export NODE_ENV=qa
export PORT=8001
export VIRTUAL_HOST=$NODE_ENV.$BASE_SITE
docker-compose -p ${VIRTUAL_HOST} up -d


# prod
export NODE_ENV=production
export PORT=8003
export VIRTUAL_HOST=$BASE_SITE
docker-compose -p ${VIRTUAL_HOST} up -d
