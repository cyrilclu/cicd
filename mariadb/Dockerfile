FROM registry.example.com:5000/cicd/rhel7.2:latest
MAINTAINER Chong <clu@example.com>

ENV DATA_DIR /var/lib/mysql

RUN yum install -y mariadb-server && \
    yum clean all

ADD mysqld_charset.cnf /etc/my.cnf.d/

COPY scripts /scripts
RUN chmod +x /scripts/start

EXPOSE 3306

VOLUME ["/var/lib/mysql"]

ENTRYPOINT ["/scripts/start"]
