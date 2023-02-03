FROM alpine:3

RUN apk --update add --no-cache logrotate && \
    rm -f /etc/logrotate.d/*

ADD initscript.sh /

ENTRYPOINT ["/initscript.sh"]
#CMD [""]
