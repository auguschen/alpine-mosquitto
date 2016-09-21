FROM alpine

MAINTAINER Chen Augus <tianhao.chen@gmail.com>

RUN apk update && apk add mosquitto mosquitto-clients && mkdir -p /var/lib/mosquitto /var/log/mosquitto 

EXPOSE 1883 8883

CMD /usr/sbin/mosquitto -c /etc/mosquitto/mosquitto.conf
