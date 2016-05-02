FROM       registry.example.com:5000/cicd/jdk:1.7.0
MAINTAINER Chong <clu@example.com>

ENV MAVEN_VERSION 3.3.3
ENV MAVEN_HOME /opt/maven

COPY apache-maven-${MAVEN_VERSION}-bin.tar.gz /opt/

RUN tar xzf /opt/apache-maven-${MAVEN_VERSION}-bin.tar.gz -C /opt && \
    mv /opt/apache-maven-${MAVEN_VERSION} /opt/maven  && \
    ln -s /opt/maven/bin/mvn /usr/bin/mvn

COPY settings.xml /opt/maven/conf/settings.xml

ADD hello /hello
RUN cd /hello && \
    mvn clean install -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true

RUN rm -f /opt/apache-maven-${MAVEN_VERSION}-bin.tar.gz
