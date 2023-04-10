FROM docker.uclv.cu/tomcat:8.5.85-jre8-temurin
LABEL MAINTAINER="roberto.labarca@nauta.cu"
ENV DEBIAN_FRONTEND=noninteractive
ADD files/sources.list /etc/apt/sources.list
RUN rm -drf /usr/local/tomcat/webapps && \
    mv -f /usr/local/tomcat/webapps.dist/ /usr/local/tomcat/webapps/ && \
    rm -rf /var/lib/apt/lists/*
EXPOSE 8080
CMD ["catalina.sh", "run"]