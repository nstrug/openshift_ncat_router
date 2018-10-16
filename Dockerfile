FROM registry.access.redhat.com/rhel7
MAINTAINER redhat-emea

EXPOSE 8000

RUN yum install -y nmap-ncat

CMD ["ncat","-lk","8000","--sh-exec","\"ncat $REMOTE_SYSTEM $REMOTE_PORT\""]
