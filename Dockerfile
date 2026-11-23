FROM alpine:3.24.4
LABEL maintainer="Shingo Omura <everpeace@gmail.com>"

RUN apk upgrade --no-cache && \
    apk add --no-cache curl jq bash bind-tools ca-certificates

USER nobody
HEALTHCHECK NONE
CMD ["tail", "-F", "-n0", "/etc/hosts"]
