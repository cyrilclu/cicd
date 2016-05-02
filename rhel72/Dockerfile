FROM       registry.access.redhat.com/rhel7.2:latest
MAINTAINER Chong <clu@example.com>

ENV TZ "Asia/Shanghai"
ENV TERM xterm

ADD rhel7-server-rpms.repo /etc/yum.repos.d/rhel7-server-rpms.repo
ADD epel.repo /etc/yum.repos.d/epel.repo

RUN yum install -y curl wget tar bzip2 unzip vim-enhanced passwd sudo yum-utils hostname net-tools rsync man && \
    yum install -y gcc gcc-c++ git make automake cmake patch logrotate python-devel libpng-devel libjpeg-devel && \
    yum install -y pwgen supervisor openssh-server mariadb && \
    yum clean all

RUN ssh-keygen -b 1024 -t rsa -f /etc/ssh/ssh_host_key -N '' && \
    ssh-keygen -b 1024 -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' && \
    ssh-keygen -b 1024 -t dsa -f /etc/ssh/ssh_host_dsa_key -N ''

ADD supervisord.conf /etc/supervisord.conf

RUN mkdir -p /etc/supervisor.conf.d && \
    mkdir -p /var/log/supervisor

ADD supervisor_sshd.conf /etc/supervisor.conf.d/sshd.conf

RUN echo "redhat" |passwd --stdin root

EXPOSE 22

ENTRYPOINT ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]
