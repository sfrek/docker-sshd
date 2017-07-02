FROM alpine

RUN \
        apk add --no-cache \
		bind-tools \
		ca-certificates \
		curl \
		nmap \
		nmap-ncat \
		nmap-nping \
		nmap-nselibs \
		nmap-scripts \
		openssh \
		tcpdump \
		tcptraceroute \
		&& \
	mkdir -p ~/.ssh && \
	curl -s -XGET https://github.com/sfrek.keys > ~/.ssh/authorized_keys && \
	chmod 0440 ~/.ssh/authorized_keys

ADD ./run.sh /usr/bin/run.sh

EXPOSE 22822

CMD ["/usr/bin/run.sh"]
