FROM debian:sid

## <https://github.com/nodesource/distributions>
RUN apt-get update && \
    apt-get install -y mongodb curl && \
    curl -sL https://deb.nodesource.com/setup | bash - && \
    apt-get install -y nodejs && \
    rm -rf /var/lib/apt/lists/* && \
    chmod go+w /tmp

RUN nodejs --version

RUN npm install amid

ADD server.sh /server
ADD amid-config.json /config.json
RUN chmod u+x /server
