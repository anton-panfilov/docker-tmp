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

echo -e "🔴 ${HL_START}Removing all containers and volumes for project: ${HL_START_PURPLE}${PROJECT}${HL_END}"

read -p "Are you sure you want to proceed? (Y/N): " CONFIRM
if [[ "$CONFIRM" != "Y" && "$CONFIRM" != "y" ]]; then
  echo "Operation canceled."
  exit 0
fi

docker compose -p "$PROJECT" down --volumes --remove-orphans
echo -e ""