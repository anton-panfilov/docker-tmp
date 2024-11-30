#!/bin/bash

# This script is part of a Docker Compose examples repository.
# Author: Anton Panfilov <anton@panfilov.biz>
# Repository: https://github.com/anton-panfilov/docker-tmp

source .env
HL_START="\033[1;4m"
HL_START_PURPLE="\033[45m"
HL_END="\033[0m"

if [[ -z "$PROJECT" ]]; then
  echo "Error: PROJECT variable is not set in the .env file."
  exit 1
fi

./stop.sh
echo -e "🟢 ${HL_START}Bringing up containers for: ${HL_START_PURPLE}${PROJECT}${HL_END}"
docker compose -p ${PROJECT} up