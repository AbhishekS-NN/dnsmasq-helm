FROM alpine:3.7

RUN apk --no-cache add dnsmasq

EXPOSE 53/udp

CMD ["dnsmasq", "-k"]
