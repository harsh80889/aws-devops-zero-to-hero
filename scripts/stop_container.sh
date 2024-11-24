#!/bin/bash
set -e

# Stop the running container (if any)
#forcefully deleting the running container here when we mannually commit/make changes
#in the code then code deployment was succesfull and thev docker image was deployed
#and when we integrate the code pipeline in code deploy so code pipeline again
#tried to deploy the same docker image and the docker image already exits so it gave
#error, so we write the below code to delete the existing docker image
containerid=`docker ps | awk -F " "'{print $1}'`
docker rm -f $containerid
