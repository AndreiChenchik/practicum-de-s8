#!/bin/bash

USER_VM=yc-user
HOST_VM=de-slave.duckdns.org
IMAGE_VM=$(ssh sprint8 docker ps --format '{{.Names}}')
echo USER_VM $USER_VM
echo HOST_VM $HOST_VM
echo IMAGE_VM $IMAGE_VM
scp -r . sprint8:~/remote-lessons
ssh sprint8 "
    docker cp ~/remote-lessons $IMAGE_VM:/lessons/
" 