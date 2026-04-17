#!/bin/bash

CONTAINER=$(docker ps --filter "ancestor=jenkins/jenkins:lts" --format "{{.Names}}")

docker exec "$CONTAINER" cat //var/jenkins_home/secrets/initialAdminPassword