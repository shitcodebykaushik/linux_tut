# List of the command 
- `Docker login` => Always check this in the terminal to authintacte to check wheather docker is login or not .
- `Docker --version` => This will show the docker version 
- `Docker info` This will display the system wide docker info .
- `docker run hello-world ` This is going to run the test container of the docker .
- `docker run --rm ubuntu echo "hello` This will remove the container after execution and print hello .
- `docker ps` This will show the running container 
- `docker ps -a` This will show the all conatiner including stopped one 
- `docker ps -q` This will show the container id only .
- `docker  start <container_id>` This will start a stopped container 
- `docker stop <contianer_id>` This will stop the container .
-  `docker restart <container_id>` This will restart the container .
- `docker pause <container_id>` This will pause the container 
-`docker unpause <container_id>` This will unpause the container .
- `docker container prune` This will remove the all stopped container .
- `docker rm -f <container_id>` Remove stopped container 
- `docker rm -f <container_id>` This will remove the running container .
- `docker system df` This will show the ususage disk. 
- `docker system prune` This will remove all unused container image and the networks .
- `docker logs <container_id>` This will show the container logs .
- `docker inspect <container_id>` This will show the detailed info about a container 
- `docker stats` This will show the live resource ususage of containers .
- `docker top <container_id>` This will show the running process inside the container .
- `docker events` This will get the real time event logs .
- `docker exec -it <container_ud>bash` this will open an interactive shell inside a running container .
- `docker exec it <container_id>` attach to a running containers .
- `docker images` list all images locally .
- `dccker search ubuntu` This will search for an Docker hub .
- `docker pull ubuntu` This will download an image from docker hub.
- `docker rmi <image_id>` This will remove an image .
- `docker image prune` Remove all unused images .
- `docker image ls ` This will list the image .
- `docker build -f Dockerfile -t myapp` This will build the image from the docker file .
- `docker build -f Dockerfile -t myapp` This will specify dockerfile to use .
- `docker volume create my_volume` THis will create the volume .
- `docker volume ls` This will list all volumes
- `docker volume inspect my_volume` Shows details of volume .
- `docker network ls ` List all networks 
- `docker network create my_netowork` create a network .
- `docker network inspect my_network` Inspect a network 
- `docker network rm my_netowrk` Remove network
- `docker netowrk connect my_netowrk <continar_id>` connect a container to network .
- `docker network disconnect my_network <container_id>`Dicsconnect a container free container .
- `docker-compose up` Start a service defined in docker-compose.yaml
- `docker compose down` Stop and remove containers,netowrk and volume .
- `docker-compose restart` Restart the service 
- `docker-compose logs` Show the logs for service .
- `docker-compose ps` This will show logs for service .
- `docker-update --cpus 2 <container_id>` This will limit the cpu usuage .
- `docker update --memory 500 <container_id>` Update container resource limits .
- `docker stats --no-stream` Show real-time container usage .
- `docker inspect <container_id>` This will show the full metadata of container .
- `docker logs -f M+<container_id>` Stream logs from a running container .
- `docker diff <container_id>` Show filesystem changes inside a running container .
- `docker events` Get a real time system-wide Docker events .
- `docker network create --driver bridge my_bridge` create a custom bridge network .
- `docker network create --subnet=192.168.1.0/24 my_custom_network` Create a network with a subnet .
- `docker network inspect my_custom_network` inspect network details.
- `docker network prune` Remove the unused networks 
- `docker network disconnect my_bridge <container_id>` Disconnect a container .
- `docker-compose config` Validate and view the composed configuration .
- `docker run --user 1001:1001 myapp` Run a container with a specific user Id .
- `docker run --read-only myapp` Make the root filesystem read only .
- `docker --cap-drop ALL myapp` This will drop all the linux capabilities .
- `docker node ls ` List nodes in swarm .
- `docker swarm init` Initilize a docker swarm 
- `docker service ls` list the running services .
- `docker service scale myservice=3` Scale service replicas .
