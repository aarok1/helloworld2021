# Pull base image 
From tomcat:8-jre8 

# Maintainer: aarok1
MAINTAINER "aarokoru@gmail.com" 
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps
