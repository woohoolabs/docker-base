#!/usr/bin/env bash
set -e

export DEBIAN_FRONTEND=noninteractive

echo -e "\nGIT"
echo "------------------------------------------------------------"
git --version

echo -e "\nDOCKER"
echo "------------------------------------------------------------"
docker -v

echo -e "\nDOCKER MACHINE"
echo "------------------------------------------------------------"
docker-machine version

echo -e "\nDOCKER COMPOSE"
echo "------------------------------------------------------------"
docker-compose --version

echo -e "\nTERRAFORM"
echo "------------------------------------------------------------"
terraform -v

echo -e "\nAWS CLI"
echo "------------------------------------------------------------"
aws --version
