# Pull base image 
From tomcat:8-jre8 

#maintainer aarok1
LABEL MAINTAINER: aarokoru@gmail.com 
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps
