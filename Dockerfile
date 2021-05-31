# Pull base image 
From tomcat:8-jre8 

# Maintainer: aarok1
MAINTAINER "aarokoru@gmail.com" 
EXPOSE 8080
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps
CMD apachectl -D FOREGROUND
