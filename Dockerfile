FROM alpine:3.10.3

LABEL maintainer="jonz94 <jody16888@gmail.com>"

RUN apk add --no-cache rsync openssh-client

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
