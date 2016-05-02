#! /bin/bash

set -e

mkdir -p $JENKINS_HOME/plugins

for plugin in `ls /usr/share/jenkins/ref/plugins/`; do
    if [[ ! -e $JENKINS_HOME/plugins/$plugin ]]; then
        cp /usr/share/jenkins/ref/plugins/$plugin $JENKINS_HOME/plugins/$plugin
    else
        continue
    fi
done

exec java -jar /usr/share/jenkins/jenkins.war
