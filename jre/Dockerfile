FROM       registry.example.com:5000/cicd/rhel7.2:latest
MAINTAINER Chong <clu@example.com>

ENV JAVA_VERSION 1.7.0
ENV JRE_HOME /usr/lib/jvm/jre

RUN yum -y install java-${JAVA_VERSION}-openjdk && \
    yum clean all
