FROM alpine

RUN \
        apk add --no-cache \
                openssh \
                nmap \
                tcpdump \
                tcptraceroute

ADD ./run.sh /usr/bin/run.sh

EXPOSE 22

CMD ["/usr/bin/run.sh"]