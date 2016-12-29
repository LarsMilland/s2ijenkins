FROM fabric8/s2i-java
USER root
COPY run /usr/local/s2i/
RUN chmod 755 /usr/local/s2i/run
USER 185
CMD [ "/usr/local/s2i/run" ]
