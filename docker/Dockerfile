FROM docker.elastic.co/beats/filebeat:6.4.3
USER root
RUN mkdir -p /filebeat/data /filebeat/config /filebeat/home /filebeat/logs
COPY assets/filebeat.yml /filebeat/config/filebeat.yml
COPY assets/docker-entrypoint /usr/local/bin/docker-entrypoint
RUN chown -R filebeat:filebeat /filebeat/*; chmod 755 /usr/local/bin/docker-entrypoint; chmod -R 755 /filebeat
USER filebeat
VOLUME /filebeat/data
VOLUME /filebeat/config
VOLUME /filebeat/home
VOLUME /filebeat/logs

