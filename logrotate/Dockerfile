FROM alpine:latest

RUN apk --update --no-cache add logrotate
RUN echo "*/5 * * * * /usr/sbin/logrotate -dv --state /opt/logs/logrotate.status /etc/logrotate.conf" >> /etc/crontabs/root
COPY logrotate.d/* /etc/logrotate.d/
RUN chmod 644 /etc/logrotate.d/*

CMD ["crond", "-f"]