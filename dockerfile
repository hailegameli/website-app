#Pulling base image
FROM ubuntu
#setting up workdirectory to copy the code inside the container
WORKDIR /app
#Update ubuntu os
RUN apt-get update -y
#To Install apache2 webserver
RUN apt-get install apache2 -y
#copy code from local to inside the docker image
COPY . /var/www/html
#Start the apache server
ENTRYPOINT apachectl -D FOREGROUND