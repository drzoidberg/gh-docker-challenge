FROM ubuntu:focal
RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade
WORKDIR /usr/share/nginx/html
RUN DEBIAN_FRONTEND=noninteractive apt-get -yq install nginx
RUN rm -v /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/
COPY ./nginx.conf /usr/share/nginx/html
EXPOSE 80
CMD service nginx start