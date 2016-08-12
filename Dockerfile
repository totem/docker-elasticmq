FROM java:openjdk-8u92-jre-alpine
ENV INSTALL_DIR /opt/elasticmq
ENV ELASTICMQ_VERSION 0.9.3

# Setup
RUN \
  # Fix for Java DNS Caching
  grep '^networkaddress.cache.ttl=' $JAVA_HOME/lib/security/java.security \
      || echo 'networkaddress.cache.ttl=60' >> $JAVA_HOME/lib/security/java.security \
  #  Add openssl
  && apk add --no-cache --update \
      openssl \
  # Setup elasticmq
  && mkdir -p $INSTALL_DIR \
  && wget -O $INSTALL_DIR/elasticmq-server.jar \
      https://s3-eu-west-1.amazonaws.com/softwaremill-public/elasticmq-server-$ELASTICMQ_VERSION.jar \
  # Cleanup
  && rm -rf ~/.cache /tmp/*

EXPOSE 9324

WORKDIR $INSTALL_DIR

CMD ["java", "-jar", "elasticmq-server.jar"]