
- This is it. Containers are the next once-in-a-decade shift in infrastructure and process that makesor break you .
- The Ops perspective will download an image start a new container log in to the new container,run the command inside it and destroy it .
- The dev perspective will pull some cdoe from the github,inspect a dockerfile ,containerize the app run it as container . 
- Host to container (Serverless)
- It is the next object to compute .
- The solution is for developer
- Moby dock
- Gordon (Turtle) is the main theme of the  docker .
- Docker is all about the speed 
- Devlop faster 
- Build Faster 
- Test Faster
- Deploy Faster 
- Update Faster
- Recover Faster
 - `Docker engine/server/deamon` It  is the infrastructure pluging software that runs and orchestrates the continer . It is the core container run time that run the container ,
 - Container are the building block of the docker .
 - `docker version` It will verifiy that wheather cli can talk to engine or not . 
 - `docker info`  It will give most config value
 - `docker`
- `image` An image is the application that we want to run . It it all the binary and   libiray source code that make the application . It is an object that contain os filesystem and the applicaton,It is the stopped container ,in terms of developer we can say that it is the class .`
- `container` A container is the an instance that image running as a process. Or we can say that it is a software bucket comprising everything that is necessary  to run the software independently .Container have theire own file system process and network . Container are herieted from the image . 
- A `instance` in a docker is the term used to describe the container that is actively running or has been created from a docker image . It is where where application or service lives and operated in a isolated environment 
-`docker exec -it container id bash` This command will open the terminal in the container
- `docker container run --publish 80:80 nginx.`
 This will download image 'nginx' from docker hub and will start a new container from that image after that it will opened the port `80` on the host IP . Routed that trafiic to the container IP, port 80 .
 We dont want to run this always so we use `ctrl+c` and type the command like `docker container run --publish 80:80 --detach ngnix
 Detach  will tell the program to run in the background .
 
 - What happens in 'docker container run '?
    - There is misconception that the docker is running a container in background but there is lot which is happening in the background .
    - But in depth it looks for the image locally in image cache . If it doesnt find the anything then it will look for the remote image repository (default to docker hub) and download the latest version .
    - Then its going to creates a new container based on the that image and prepare to start it doesn't make a copy of the image ,it just start on the layer of the changes .
    - Then it gives it a virtual IP on a private network inside the docker engine
    - Opens up the port on the host and forward to port in container.
    - Starts the container by using the `CMD` in the image Dockerfile .

- Contianer VS Vm
   - Container are the just process,and it is limited to what rresource they can access.
   - Exist when the process stops .
   - Container run over the host .

    # The homework section is left .

- What go inside the container 
 - `docker top` It will process list in one container.
 - `docker inspect` It will give details of one container config.
 - `docker stats`  It will give the performance stats of all containers

- Getting a shell inside Containers 
`docker run -it --name Proxy nginx bash` This comand will let you run terminal inside the server. The problem is with the git bash as it is not configured yet so use powershell. 


 # Dokcer networking
 - All are extrernally exposed ports cloesed by defult. But exposing manually is better for the securities purpose.
 - Their inter communication never leave host .


- Each container connected to a private virtual network "bridge"
- Each virtual network routes through NAT firewall on host IP
- All containers on virtual network can talk to each other without -p
- Best practice is to create a new virtual networl for each app :
-  "Batteries included ,But Removable"
    - Defaults work well in many cases,but easy to swap out parts to customize it .
- Make new virtaul networks
- Attach containers to more then one virtual network (or none )
- Skip virtual network and use host IP (--net=host) 
- Use different Docker network driver to gain new abilities.
 - You can list one port at the one time .
 `Command line`
  - `docker container run -p 80:80 --name webhost -d nginx`
    - This is going to create a new container with the image of nginx and the name is webhost along with the port 80:80 .
  - `docker container port webhost`
  - To check the IP Addres we use this command
  ` docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' webhost`

 # Docker Network: CLI Management 

- `docker network ls`
   This will show you the all network that has been created .It will list the Network ID ,NAME,Driver,Scope.

- `docker network inspect bridge`
   This will list the bridge network .
- `docker netowork create my_app_net`
   This will create the virtual network with the driver
   Network driver build-in or 3rd party extension that give you virtual network features.
   - `docker network disconnect` 
   This will disconnect the network .

# Docker Network DNS
Understand how DNS  is the key to easy inter-container comms
See how it works by default with the custom 
Learn how to use -link to enable DNS on default bridg network .
Docker daemon has a built in DNS server that container use by default .
 # Assignment 14,15,14,18 .
 

 # What is Image
  - App binaries and dependencies ,
  - Image is just an configuration object .
  - The layer that makeup the an image are fully independent and have no concept of being part of the collective image .
  - Each image is identified by a crypto ID that is hash of the config object 
  - Each layer is identified by a crypto ID that is hash of the content it cotains .
  - Image and layers are immutable .
  -  Docker image are positioned as the key building block of the containerized application ,which will be deployed on the cloud server .
  - Metadata about the image data and hoe to run the imge
  - An image is an ordered collection of the root filesystem chancges and the correspoind exection parameters for use within a container runtime .
  - Image tend to be the small .
  - Image are like stopped container .
  - Image are the build time construct and containr are the runtime construct .
  - Both image and the container are connected to each other  we cant delete the image while container are running .
  - Images are built small and stipped of all non-essential parts .
  - Docker image doesnt contain the kernal, The running container share the kernal of the host computer .  
  - Docker employs the storage driver that is responsible for the stacking the layers ans presenting them as a single unified filesystem .
  - Docker share the image layers .
  - Not complete OS,No kernal,kernal module (eg drivers) .
  - Small as one file (your app binary) like golang static binary .
  - Big as a Ubuntu distro with apt and Apache PHP and more intalled .
  - All try to pull the official image .
  - `docker pull image name ` This is the command to download the image by default it will download the lates one  .
  - You can create your own image and make them to available to the public .
  - docker hub is apt package system for container.

  - Image layers
    - It uses the union file system and made from the layer of the changes .
     `docker history officialnameofiamge:latest` This will give you the list of the changes.
     - Eache layer get their own unique SHA number .
     - We are not storing the same stake again and again .for the more then one  .
     - <missing > doesnt measn missing it simply means passs id
     
  - Image tag is left 
  -  Docker image can be deleted from the host by using the `rm`which means the remove .
     `docker image rm pid`


# Container Lifetime & Presistant Data
- Container are the runtime instance of an image ,It is lightweght and share the OS/kernal with the host they are running on .

Container are usually immuatable and ephemeral .
"immutable infrasturcture" : only re-deploy containers,never change .
- Docker gives us fetaures to ensure these "seperation of concerns ".
- The whole purpose of the container is to run application or service .
- The problem of the unque data is known as the "persistant data" .
- Docker have the solution to these problem Volumes and Bind Mounts .
- Volumes : Make special location outside of container UFS.
- Docker images are stored into the registries .
- Docker images are just bunch of loosely-connected read only layers .
  -  Each layer in the output end with the Pull complete represents a layer in the image that was pulled and the total pull is the nuber of the layer in the image .
- Bind Mounts : link container path to host path . 
   
 - Persistent Data : Volume 
  - Volume need manual deletion .
  - Dockerfile is not part of  image of the metadata .
  - `Docker file` It is the formatted text file which essentialyy servesc
  as an instruction mannual for what contianer should do and ultimately assembeles a docker image ,we use dockefile to contain the commands that should execute the when it is built ,
- Persitant volume
 - The first thing that computer need to worry about is the docker file.
 - Volume need manual deletion .
 - Each time there is new volume with the new release .
   - For testing purpose we have pulled the mysql docker file .
      - Now we are going to inspect the docker file 
        `docker pull ngninx`
        - `docker image inspect nginx` After running this command we wont see the metadata as the docker file is not the part of the metadata .
        - `docker container run -d --name mysql -e MYSQL_ALLOW_ENTERY_PASSWORD mysql` This will start the new container with the name of the MYSQL  Need to fix this .
         As soon as we run the container we have the mainy instance behind the door . After running the container we will get the `mount`.
         - `Mount` It is the running container getting its own location  on the host and to store the data .
         - `docker volume ls ` This will list the driver and the volume name .
         - `docker volume inspect volume name `This will list the volume  data .
         - `docker container rm name ` This is to remove the container from the repo .
         - `docker image inspect image name ` This will generate the file ,where we can see the layers section in which we can find  the SHA256 . 
         - `docker history` shows the build history of an image not the a strict list of the layer in the image .
         - ` Docker file instruction ` It is use to create the metadata to the image and it doesn't helps in creating the new layers.
         - `Docker container stop` It will stop the contianer .
         - ` Service docker status `
         - `Get-Service docker `
         - `ps elf`
         - `ctrl+pq` to exit the contsiner without terminating them .
         - `docker container exec` lets you run a new process inside of a running
container
      
# Container vs VM 
- Both need host to run on .
   - For vm we have one physical server and it contains cpu,Nic and other important things . When the power is on the hypervisior boots it lasys claim to all phsical resource on the system then it craves them into the virtual version that looks and smell and feel exactely like the real things.It then package them into the real thing called vm .
   - For container we intall the containe engine such as docker and then it taskes the OS resource such as process tree, filesyste,and the nerwork stack and craves them into the secure isolated constructs called container. Each  container looks smells and feels just like a real OS. Inside of each container we can run an application .
- In short we can say that hypervisors perform the hardware virtualization they curve the up physical resource into the virtual versions .
 And container perform the OS virtualization which carve up OS resource into the virtual versions .

 - Containers represebnts the operating system virtualization . These are the process level isolation and have the less security .
 - Virtual Machine represents the hardware level virtualization . These are the fully isolated and hence more secure .
- There are no support of the SSH,TTY in the containerization .
 - Persitant Data : Bind mounting 
  -  Stoping the container doesn't destroy the contoianer or the data inside it 
  - Volume are prefered way to store persistant data in the cotainer 
  - It maps a host file or directory to container file or directory .
  - Basically just two location pointing to the samr files. 
  - Again skips UFS and host file overwrite any in container
  - Cant use in Dockerfile must be at container .
  - Bound mounts start with the // .
    `docker container exec -it kkr bash` This commannd will run the container and open the terminal .
  // Assignment is left

  # Docker Compose 
  The reason why we need this is :-
   To configure the relationship betweem container .
   To save our docker container run setting easy-to-read file .
   To create one-line developer environment startup .
 - It comprised of 2 seprate but related things 
    - YAML-formatedd file that describe our solution options for :
      - Container 
      - Yaml
      - Volumes 
   - A CLI tool docker-compose used for local dev/test automation with those YAML files .
- docker-compose.yml
Compose YAML has its own version .
YAML file cant be used with the docker-compose command for local docker automation .
 docker-compose.yml is default filename,but any can be used with docker-compose -f .
 - docker-compose cli
   Not design for the production grade tool but suitable for the local development test .
  - Two most common command are 
     - Docker - compose up setup volumes/network and start all containers .
     - Docker - compose down stop all container and remove cont/vol/net .
# Docker engine 
It runs and manage the container . It is modular in design with the swappable components . It is made by connecting the many specialized parts that works togther . to create and run container (image,API,exectiondriver,runtime,shims etc ).
- The replacement of the lfc was the libcontainer it was built to be the platform agnostic that provided Docker with the acces to the fundamental container building  blocs that exits inside the os  as of the resuolt it became the execution driver in docker .
-  Docker deamon no lomger contain the any container runtime code .All the runtime code is implemented in the seperate OCI-compliant layer . By default this tool is
know as the runc ,it stand for the `reference implementation` .
- Runc is small cli that wraps around the libcontainer,It single life purpose is to create the container .

- `containered`- It acts as bridge between daemon and runc,it is the component that is responsible for the container lifecycle operation such as starting and stopping contianer pausing and un-pausing them and destroying them .containerd is small, lightweight, and designed for a single task in
life - containerd is only interested container lifecycle operations .

- Our command are converted into the API payload and POst them to the the correct API endpoint . This API is used implemented in the daemon , Daemon recive the command and make the call to the runC via crud style API over gRPC. It converts the required docker image into an OCI bundle and tells the runC to use this to create new container .
- As of now the main functionality of the deamon includes image management, image builds, the Rest API authentication,security core networking and orchestration .


# Containerizing an App
- The process of taking an application and configuring it to run as a container is
called “containerizing”. Sometimes we call it “Dockerizing” .
- The process of containerizing an App looks like this  .
   - Start with your application code .
   - Create a dockerfile that describe your app,it dependencied and how to run it .
   - Feed the doeckerfile into the docker image build command
   - Now the docker will build your image into the docker image .
- Once your container is containerized it is ready to ship and build  .
- `Dockerfile` is the file that describe the application and tells the docker how to build an image from it .
- Container utilize feaatures provided by the host OS such as the :- 
   - Namespace which provides the isolation for resources such as process IDs(PID) and the IDs(UID) file system ans network .
   - Control Groups (cgroups) Manage and limit resouce us
- Always  push the production image containing the stuff needed to run your application .
-  The docker pull subcommand is programmed to look for the images at this location .
- Docker registery is a place where the Docker images can be stored in order to be found publicly found .
- Ochestration It is all about the automating and simplifying the managemt of the containerized application at scale . Thingd like automatically rescheduklling containers when nodes break,scaling things up  when the demands increase and smoothly pushing updates and fixes into the live production environment .
- Cluster of orchestrated docker host a swarm and the docker hosts participating in a swarm are said to be the swarm mode .
- Node are the instance of the docker engine .
- A node is the machine (physical or virtual machine) that is part of the docker swarm cluster .
- Cluster is the group of the nodes working together in a swarm .
- A swarm consist of one or more nodes .These can be physical, cloud or vm .
 - All nodes should communicate with each other over the reliable network .
 - Nodes are configured as worker or managers .
    - Manger looks after the state of the cluster and are in charge of dispacthing tasks to the workers (means dispatch the containers to the workloads , Replicas means container.)
    - Workers accespt the tasks from the managers and execute them .
    - Service are the way to run the task .
    - etcd database is the place where all the config file is held .
    - TLS to encrypt communications,authenticate nodes, and authorize roles.Automatic key rotation is also thrown in as the icing on the cake! And it all happens so smoothly that you wouldn’t even know it was there .
    - ` swarm init` It will switch the node into the swarm node and create a new swarm,it make the node as the first manager .
    - `docker swarm join command`
    - page 136 left 







# Working on the project 
- Project theme - Runnig Service in a Container 

`docker run -i -t ubuntu:14.04 /bin/bash` - This will download the image and will launch the terminal by default .
- And once you are into the container run it .
- After making the changes you can see the changes in the container in the terminal by `docker diff TS ` it will list the changes made in the container .
- eth 0 is the interface for which the Docker engine assigned the IP address and this address falls within the same range of the dockwer0 virtual interface this inteface is used for intra-container communication and host-to-contianer communication .
- The second one is the lo (Loopback) interface for which the Docker engine asssigned the address .This is used for the local communication within the container .
- Avoid running container as root to reduce security risk .
- Use --restart=always to automatically restart failed containers .
- Use Dockerfile Best practices to optimize the layers by ordering copy and run statement .
- Leverage Multi-stage builds to reduce image size and improve the security by sepearty build and runtime dependencies .
# Swarm 
- Docker swarm is like a well-organized kitchen that makes sure multiple server(node) work together .
- A nodes is virtual or physical machine .



# Persistant volume 
- Persistant means when the system us shutdown or restaterd then also data reamins , as it not delted .
- Volumes are the way to store the data into the contianer 
- Docker and k8 uses the persistant volume .
  - As we know that docker container are ephemeral by nature which means that any data created inside the container is lost once that container is removed .
  - Volumes are the solution they are designed to persist data outside the container lifecycle,enabling us to store and manage data that must survive when a container is removed or the image is rebuilt .
    - Volumes are easy to handle through the api call or docker cli .
    - Volumes are easier to backup and works on the both the linux and the windows .
    -  Volumes helps the application for high performance I/O.
    - Volumes are not good choice if you need to access the files from the host as the volumes are managed by the  docker .
    -  Volumes are often better choice than writing data directly to a container because a volumer doesnt increase the size of the container .
    - If your container generate non-persistent state data,consider using a tmpfs mount to avoid storing the data anywhere permanently  and to increase the container performance by avoiding . 
  - Docker provides two primary ways to use persistent volumes .
    - Named volumes are created and managed by docker . Data is stored in a part of the host file system which is managed by docker .
    (/VAR/LIB/docker/volumes on linux) this is the most common way of the handling the persistant data  and the way to do into the most production scenarios .
    - Bound MOunts ties volumes to a specific folder or file on the host machine , it provides the most flexibility but can caue the discrepancies between host and container .
    - 
