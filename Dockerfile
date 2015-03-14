FROM debian:sid

RUN apt-get update && \
    apt-get -y install mongodb npm && \
    apt-get -y install node && \
    rm -rf /var/lib/apt/lists/* && \
    chmod go+w /tmp

RUN npm install amid

ADD server.sh /server
ADD amid-config.json /config.json
RUN chmod u+x /server
