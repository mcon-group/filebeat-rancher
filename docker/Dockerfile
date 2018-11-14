FROM docker.elastic.co/beats/filebeat:6.4.3
USER root
RUN mkdir -p /filebeat/data /filebeat/config /filebeat/home 
COPY assets/filebeat.yml /filebeat/config/filebeat.yml
COPY assets/docker-entrypoint /usr/local/bin/docker-entrypoint
RUN chown -R root:filebeat /filebeat/*; chmod 755 /usr/local/bin/docker-entrypoint
USER filebeat
VOLUME /filebeat/data
VOLUME /filebeat/config
VOLUME /filebeat/home

