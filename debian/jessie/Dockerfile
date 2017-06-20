FROM debian:jessie
MAINTAINER dong@wenqi.us

ADD ./sources.list sources.list

RUN \ 
  cp sources.list /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  rm -f sources.list 

ENTRYPOINT ["/bin/bash"]
CMD ["/bin/bash"]


