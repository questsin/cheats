docker build -t webapp .
docker image ls
docker ps -a
docker run -d -p 8080:80 --name myapp webapp
