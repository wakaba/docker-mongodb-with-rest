FROM debian:sid

RUN apt-get update && \
    apt-get -y install mongodb npm && \
    rm -rf /var/lib/apt/lists/* && \
    chmod go+w /tmp

RUN echo '
      /etc/init.d/mongodb start
    ' > /server && \
    chmod u+x /server
