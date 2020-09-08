# gh-docker-challenge

gh-docker-challenge is a tiny project that puts into practice the basic use of Docker

## 🔎 It explores
- Docker cli & dockerfile syntax basics
- nginx bare basics


## 🚀 Usage

You must have installed docker on your local machine.
First, <code>cd</code> into the root project folder & type this for building the image:

```bash
docker build . -t {{container-name}}
```

Then, type this to generate a docker container based upon your recently built image:
```bash
# use the flag -p to expose the port of our local machine and bind it to the one defined in our dockerfile
docker run --name mi-primer-contenedor -p 49161:8080 -d docker-my-first-steps
```

## Basic useful docker cli commands
 CLI command                      | Description
--------------------------------- |----------------------------------------------------------------------
 **docker container [command]**       | rm , ls... type --help for more info
 **docker image [command]**           | rm , ls... type --help for more info
 **docker ps -a**                     | logs all **docker containers, including its states
 **docker stop [container]**          | stop container
 **docker logs -f [container]**       | show logs from main process
 **docker rm $(docker ps -a -q)**     | remove all stopped containers
 **docker exec -it [container] bash** | access to container bash
 **docker volume p**rune              | remove all orphan volumes
 **docker system prune -a**           | remove all infrastrucure created using doker

##  Useful docker tags
 Command                          | Description
--------------------------------- |----------------------------------------------------------------------
 **FROM**                           | Configures the base image to use
 **WORKDIR**                        | Establishes the working directory for the cmd directives that will be executed
 **RUN**                            | Executes a command & changes the image
 **COPY**                           | Copy files from host to guest
 **ENV**                            | Initializes environment viariables
 **EXPOSE**                         | Exposes an port
 **ENTRYPOINT**                     | Defines the default entry point from the container
 **CMD**                            | Configure default commands to be executed
 **USER**                           | Establishes the user that will execute the image's containers
 **VOLUME**                         | Mounts a directory from host to the container
