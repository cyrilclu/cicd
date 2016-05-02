FROM       registry.example.com:5000/cicd/rhel7.2:latest
MAINTAINER Chong <clu@example.com>

ENV JAVA_VERSION 1.7.0
ENV JDK_HOME /usr/lib/jvm/java-1.7.0-openjdk

RUN yum -y install java-${JAVA_VERSION}-openjdk java-${JAVA_VERSION}-openjdk-devel && \
    yum clean all
