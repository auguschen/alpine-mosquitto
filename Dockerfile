FROM alpine

MAINTAINER Chen Augus <tianhao.chen@gmail.com>

RUN apk update && apk add ca-certificates openssl mosquitto mosquitto-clients && mkdir -p /var/lib/mosquitto /var/log/mosquitto /var/run/mosquitto && chown mosquitto.root /var/lib/mosquitto && chown mosquitto.root /var/log/mosquitto && chown mosquitto.root /var/run/mosquitto

RUN mv /etc/mosquitto/mosquitto.conf /etc/mosquitto/mosquitto.conf.example && wget -O /etc/mosquitto/mosquitto.conf https://github.com/auguschen/alpine-mosquitto/raw/master/mosquitto.conf

EXPOSE 1883 8883

CMD /usr/sbin/mosquitto -c /etc/mosquitto/mosquitto.conf
