## Initial Users
The database creation logic above will create the following users:
* rr@acme.com / `l00neyTunes!`
* wile@acme.com / `l00neyTunes!`
* kim@mars.com / `to1nfinity!`
* stanley@mars.com / `to1nfinity!`

## Setup Notes (Old Way)
* [SQL Server Express](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
* [Papercut](https://github.com/ChangemakerStudios/Papercut-SMTP) -- This is Windows-only and is replaced in our Docker setup

## Preparing Your Workstation for Containers
* [Docker Desktop](https://www.docker.com/products/docker-desktop)
* [Install and Configure Windows Terminal](https://gist.github.com/dahlsailrunner/ec99e195b2a4903748a74df64a1f1a94)
* [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

Commands	Description
docker ps	List all running containers
docker ps -a	List all containers stopped, running
docker ps -a -q	List only containers id. This will be useful to pass container id to other command
docker stop container-id	Stop the container which is running
docker start container-id	Start the container which is stopped
docker restart container-id	Restart the container which is running
docker port container-id	List port mappings of a specific container
docker rm container-id or name	Remove the stopped container
docker rm -f container-id or name	Remove the running container forcefully
docker pull image-info	Pull the image from docker hub repository
docker pull nirajp82/my_first_docker_image	Pull the image from docker hub repository
docker exec -it container-name /bin/sh	Connect to linux container and execute commands in container
docker rmi image-id	Remove the docker image
docker logout	Logout from docker hub
docker login -u username -p password	Login to docker hub
docker stats	Display a live stream of container(s) resource usage statistics
docker top container-id or name	Display the running processes of a container
docker version	Show the Docker version information
docker build -f Shopping.WebClient/Dockerfile -t shoppingwebclient .
								  Build docker file from parent folder. 

docker run -d -p 8080:80 --name myshoppingwebapp  shoppingwebclient
									- Run a command in a new container

--To push image to docker hub first create tag and give same name as docker repository name. 

docker tag d8c6 nirajp82/shopping_app - Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE

--Push newly created tag to docker hub. 
docker push nirajp82/shopping_app:latest -  Push an image or a repository to a registry
	
		
	Reference: https://github.com/stacksimplify/docker-fundamentals/ 
	https://docs.docker.com/get-started/overview/
	https://github.com/nirajp82/azure-aks-kubernetes/tree/main/docker-fundamentals/05-Essential-Docker-Commands
	
![image](https://user-images.githubusercontent.com/61636643/161460780-f1c2f8f6-0084-4897-9248-0d5e1023f812.png)
