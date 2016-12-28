FROM openshift/jenkins-1-centos7
RUN curl http://updates.jenkins-ci.org/download/war/2.32.1/jenkins.war -o /usr/lib/jenkins/jenkins.war
