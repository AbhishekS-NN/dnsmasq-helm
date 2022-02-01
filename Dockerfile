FROM alpine:3.15

RUN apk --no-cache add dnsmasq

EXPOSE 53/udp

CMD ["dnsmasq", "-k"]
