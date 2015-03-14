FROM debian:sid

RUN apt-get update && \
    apt-get -y install mongodb nodejs node-gyp node-tar node-fstream npm && \
    rm -rf /var/lib/apt/lists/* && \
    chmod go+w /tmp

RUN npm install amid

ADD server.sh /server
ADD amid-config.json /config.json
RUN chmod u+x /server
