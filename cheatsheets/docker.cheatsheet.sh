##Amazon Elastic Container Service (Amazon ECS)

Docker client > VirtualBox > Linux VM > Docker Server

docker --version
docker logs $containername
docker info
docker images
docker network
docker ps 
## all containers including stopped
docker ps -a 
docker run -ti alpine
docker rmi faaadb4aaf9b
docker run -ti busybox
	docker run hello-world
	docker run -ti ubuntu bash //terminal interactive
	docker run -ti ubuntu:latest bash
## run in background
docker run -d -ti ubuntu:latest bash
docker attach $name
docker run --run --name wicked -ti ubuntu sleep 5
docker run --run -ti ubuntu bash -c "sleep 3; echo ok"
exit
docker run -ti debian bash
exit
clear

##share a disc my host to container
docker run ti -v $uri:/shared-folder ubuntu bash 
##share a disc between containers
docker run ti -v $uri ubuntu bash 
docker run ti -v-voluemes-from $containerid 

## make a container an image
docker commit $containerid
docker commit $name $name2
docker tag $imageid $mytag
#list of active ports
docker port $name

#search for images
docker search $keyword
docker pull $name
docker tag  $name $name2
docker push $name2

docker-machine --help
docker-machine ls
docker-machine create --driver virtualbox default
docker-machine start
docker-machine start default
docker-machine upgrade
docker-machine restart
docker-machine ip
docker-machine ssh
docker-machine scp
docker-machine stop

Dockerfile
FROM node:6.9.2
EXPOSE 8080
COPY server.js .
CMD node server.js

Dockerfile
FROM busybox
RUN echo "bilding simple docker image"
CMD echo "hello container"

docker build -t hello  .
docker run --rm hello