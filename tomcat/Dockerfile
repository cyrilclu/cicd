FROM       registry.example.com:5000/cicd/jre:1.7.0
MAINTAINER Chong <clu@example.com>

ENV TOMCAT_VERSION 7.0.55
ENV CATALINA_HOME /tomcat
ENV APP_DIR ${CATALINA_HOME}/webapps/

COPY apache-tomcat-${TOMCAT_VERSION}.tar.gz /apache-tomcat-${TOMCAT_VERSION}.tar.gz

RUN tar zxf /apache-tomcat-*.tar.gz && \
    rm /apache-tomcat-*.tar.gz && \
    mv /apache-tomcat* /tomcat

ADD scripts /scripts

EXPOSE 8080 8443

ENTRYPOINT ["/scripts/run"]

ONBUILD ADD . ${APP_DIR}
