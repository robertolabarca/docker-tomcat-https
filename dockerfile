FROM docker.uclv.cu/tomcat:8.5.85-jre8-temurin
LABEL MAINTAINER="roberto.labarca@nauta.cu"
ENV DEBIAN_FRONTEND=noninteractive
ADD files/sources.list /etc/apt/sources.list
ADD cert/tomcat-cert.csr /usr/local/tomcat/conf/cert/tomcat-cert.csr
ADD cert/tomcat-cert.keystore /usr/local/tomcat/conf/cert/tomcat-cert.keystore
ADD files/tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
ADD files/manager.xml /usr/local/tomcat/conf/Catalina/localhost/manager.xml
ADD files/host-manager.xml /usr/local/tomcat/conf/Catalina/localhost/host-manager.xml
ADD files/server.xml /usr/local/tomcat/conf/server.xml
RUN apt-get update && apt-get install iputils-ping -y && \
    rm -drf /usr/local/tomcat/webapps && \
    mv -f /usr/local/tomcat/webapps.dist/ /usr/local/tomcat/webapps/ && \
    rm -rf /var/lib/apt/lists/*
EXPOSE 8080
EXPOSE 8443
CMD ["catalina.sh", "run"]