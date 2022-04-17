#!/bin/bash

#docker build -t "localhost:5005/users-service:1.0" "./internal/users" -f "./docker/app/Dockerfile"
#docker build -t "localhost:5005/trainer-service:1.0" "./internal/trainer" -f "./docker/app/Dockerfile"
#docker build -t "localhost:5005/trainings-service:1.0" "./internal/trainings" -f "./docker/app/Dockerfile"

docker build -t "localhost:5005/users-service:1.0" "./docker/app" --build-arg "SERVICE=users"
docker build -t "localhost:5005/trainer-service:1.0" "./docker/app" --build-arg "SERVICE=trainer"
docker build -t "localhost:5005/trainings-service:1.0" "./docker/app" --build-arg "SERVICE=trainings"


docker push localhost:5005/users-service:1.0
docker push localhost:5005/trainer-service:1.0
docker push localhost:5005/trainings-service:1.0