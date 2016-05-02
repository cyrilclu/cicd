FROM       registry.example.com:5000/cicd/jdk:1.7.0
MAINTAINER Chong <clu@example.com>

ENV JENKINS_HOME /opt/jenkins
ENV COPY_REFERENCE_FILE_LOG /var/log/copy_reference_file.log

RUN  mkdir -p /usr/share/jenkins/ref/plugins

COPY jenkins.war /usr/share/jenkins/
COPY plugins/* /usr/share/jenkins/ref/plugins/

VOLUME $JENKINS_HOME

EXPOSE 8080

COPY jenkins.sh /usr/local/bin/jenkins.sh

ENTRYPOINT ["/usr/local/bin/jenkins.sh"]
