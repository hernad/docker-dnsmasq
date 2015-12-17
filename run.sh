#!/bin/bash

docker rm -f dnsmasq
docker run \
     --name dnsmasq \
            -d \
            -p 127.0.0.1:53:53/udp \
            -p 8053:8080 \
            -v /opt/boot/etc/dnsmasq.conf:/etc/dnsmasq.conf \
            dnsmasq

