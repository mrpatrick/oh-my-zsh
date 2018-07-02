#!/bin/bash

if [[ -z $DOCKER_SSH_KEY ]] || [[ -z $1 ]] || [[ -z $2 ]]; then
    echo "usage: DOCKER_SSH_KEY=[ssh_key.pem] docker-exec [STACK_SERVICE] [COMMAND]"
    exit
fi;

STACK_SERVICE=$1
COMMAND=$2

TASK=`ssh -i $DOCKER_SSH_KEY docker@$(docker service ps -f "desired-state=running" --format "{{.Node}}" $STACK_SERVICE) docker ps --format "{{.Names}}" |grep $STACK_SERVICE`

ssh -tt -i $DOCKER_SSH_KEY docker@$(docker service ps -f "desired-state=running" --format "{{.Node}}" $STACK_SERVICE) "docker exec -it $TASK $COMMAND"


