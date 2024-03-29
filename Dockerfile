FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get -y install apache2
ENTRYPOINT apachectl -D FOREGROUND
ADD ./index.html ./var/www/html
ENV test TestingENV
