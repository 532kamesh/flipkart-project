FROM ubuntu:16.04
MAINTAINER "532kamesh@gmail.com"
RUN  apt-get update
RUN apt-get install -y openjdk-8-jdk
ENV JAVA_HOME /usr
ADD apache-tomcat-8.5.43 /root
COPY target/*.war apache-tomcat-8.5.43/webapps
ENTRYPOINT /root/apache-tomcat-8.5.43/bin/startup.sh && bash
CMD ./create-env.sh 
