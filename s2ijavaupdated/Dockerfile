FROM fabric8/s2i-java
USER root

# Agent bond including Jolokia and jmx_exporter
ADD agent-bond-opts /opt/run-java-options
RUN mkdir -p /opt/agent-bond \
 && curl http://central.maven.org/maven2/io/fabric8/agent-bond-agent/0.1.4/agent-bond-agent-0.1.4.jar \
          -o /opt/agent-bond/agent-bond.jar \
 && chmod 444 /opt/agent-bond/agent-bond.jar \
 && chmod 755 /opt/run-java-options
ADD jmx_exporter_config.yml /opt/agent-bond/
#EXPOSE 8778 9779

#RUN mkdir -p /opt/prometheus
#ADD prometheus-options /opt/run-java-options
#ADD dropwizard-prometheus-0.0.1.jar /opt/prometheus/dropwizard-prometheus-0.0.1.jar
#RUN chmod 444 /opt/prometheus/dropwizard-prometheus-0.0.1.jar

EXPOSE 8778 9779

ENV http_proxy
ENV httpproxy 
ENV https_proxy
ENV httpsproxy 
ENV HTTP_PROXY
ENV HTTPPROXY 
ENV HTTPS_PROXY
ENV HTTPSPROXY
ENV NO_PROXY
ENV no_proxy




COPY run /usr/local/s2i/
RUN chmod 755 /usr/local/s2i/run
USER 185
CMD [ "/usr/local/s2i/run" ]
