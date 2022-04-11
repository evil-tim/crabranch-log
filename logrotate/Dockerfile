FROM alpine:latest

RUN apk --update --no-cache add logrotate
RUN echo "*/5 * * * * /usr/sbin/logrotate --state /opt/logs/logrotate.status /etc/logrotate.conf" >> /etc/crontabs/root
COPY logrotate.d/* /etc/logrotate.d/

CMD ["crond", "-f"]