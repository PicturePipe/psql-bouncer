FROM alpine:3.19.0@sha256:51b67269f354137895d43f3b3d810bfacd3945438e94dc5ac55fdac340352f48

RUN apk add --no-cache pgbouncer wireguard-tools

COPY bin/start.sh /start.sh

CMD [ "/start.sh" ]
