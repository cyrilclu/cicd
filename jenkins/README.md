curl -fL https://updates.jenkins-ci.org/1.651/latest/jenkins.war -o jenkins.war

docker run -d -p 8080:8080 --name jenkins -v /usr/bin/docker:/usr/bin/docker -v /var/run/docker.sock:/var/run/docker.sock registry.example.com:5000/cicd/jenkins:1.651
