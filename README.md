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
 cli command                      | description
--------------------------------- |----------------------------------------------------------------------
 docker container [command]       | rm , ls... type --help for more info
 docker image [command]           | rm , ls... type --help for more info
 docker ps -a                     | logs all docker containers, including its states
 docker stop [container]          | stop container
 docker logs -f [container]       | show logs from main process
 docker rm $(docker ps -a -q)     | remove all stopped containers
 docker exec -it [container] bash | access to container bash
 docker volume prune              | remove all orphan volumes
 docker system prune -a           | remove all infrastrucure created using doker
docker build . -t {{container-name}}
```

Then, type this to generate a docker container based upon your recently built image:
```bash
# use the flag -p to expose the port of our local machine and bind it to the one defined in our dockerfile
docker run --name mi-primer-contenedor -p 49161:8080 -d docker-my-first-steps
```

## Basic useful docker cli commands
 cli command                      | description
--------------------------------- |----------------------------------------------------------------------
 docker container [command]       | rm , ls... type --help for more info
 docker image [command]           | rm , ls... type --help for more info
 docker ps -a                     | logs all docker containers, including its states
 docker stop [container]          | stop container
 docker logs -f [container]       | show logs from main process
 docker rm $(docker ps -a -q)     | remove all stopped containers
 docker exec -it [container] bash | access to container bash
 docker volume prune              | remove all orphan volumes
 docker system prune -a           | remove all infrastrucure created using doker

##  Useful docker tags
 command                          | description
--------------------------------- |----------------------------------------------------------------------
 *FROM*                           | Configura la imagen base para usar.
 *WORKDIR*                        | Establece el directorio para las directivas de CMD que se ejecutarán.
 *RUN*                            | Ejecuta un comando y cambia la imagen.
 *COPY*                           | copia archivos del host al guest
 *ENV*                            | Inicializa variables de entorno
 *EXPOSE*                         | Expone un puerto al exterior
 *ENTRYPOINT*                     | Punto de entrada por defecto de la aplicación desde el contenedor
 *CMD*                            | Configure comandos por defecto para ser ejecutado
 *USER*                           | Establece el usuario para ejecutar los contenedores del la imagen.
 *VOLUME*                         | Monta un directorio desde el host al contenedor.
