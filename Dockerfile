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
		openldap-clients \
		openssh \
		openssl \
		tcpdump \
		tcptraceroute \
		wget \
	&& wget -t3 -c https://github.com/coreos/etcd/releases/download/v3.2.4/etcd-v3.2.4-linux-amd64.tar.gz \
	&& tar xzf etcd-v3.2.4-linux-amd64.tar.gz \
	&& mv etcd-v3.2.4-linux-amd64/etcdctl /usr/local/bin \
	&& rm -rf etcd-v3.2.4-linux-amd64*

ADD ./run.sh /usr/bin/run.sh

EXPOSE 22822

CMD ["/usr/bin/run.sh"]
