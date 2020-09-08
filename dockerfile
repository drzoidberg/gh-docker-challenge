FROM ubuntu:18.10
WORKDIR /usr/src/app
RUN apt search nginx
VOLUME ["/tmp"]
COPY ./index.html /tmp
EXPOSE 80