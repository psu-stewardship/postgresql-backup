FROM alpine:3.9

RUN apk add --no-cache postgresql

ADD dump.sh /
RUN chmod +x /dump.sh

ENTRYPOINT ["/dump.sh"]
