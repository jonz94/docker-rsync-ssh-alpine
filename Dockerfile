FROM alpine:3.11.5

LABEL maintainer="jonz94 <jody16888@gmail.com>"

# add edge main repository
RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories

# install rsync & openssh-client
RUN apk add --no-cache rsync@edge openssh-client@edge

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
