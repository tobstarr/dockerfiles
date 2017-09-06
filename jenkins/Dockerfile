FROM fedora:26

RUN dnf update -y && dnf install -y docker docker-compose java-1.8.0-openjdk bzr ca-certificates curl dirmngr git git gnupg2 mercurial openssh-clients procps subversion wget golang

ARG JENKINS_VERSION
RUN mkdir -p /opt && curl -SsfL http://mirrors.jenkins.io/war/${JENKINS_VERSION}/jenkins.war> /opt/jenkins.war

ENV JENKINS_HOME=/var/jenkins_home

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
