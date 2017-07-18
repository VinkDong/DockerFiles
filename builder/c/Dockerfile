FROM centos:latest
maintainer Vink<dong@wenqi.us>

RUN \
  yum -y update \
  && yum -y install epel-release \
  && yum makecache fast \
  && yum -y install openssh-clients expect


RUN set -x \
  && PATH=/opt/rh/devtoolset-3/root/usr/bin:$PATH \
  && export buildDeps='pcre-devel openssl-devel gcc make zlib-devel readline-devel \
  openssl patch git apr-devel apr-util-devel libevent-devel libxml2-devel libcurl-devel \
  httpd-devel pcre-devel yajl-devel libstdc++-devel centos-release-scl-rh cmake systemd-devel gcc-c++ \
  automake autoconf autscan file' \
  && yum -y --setopt=tsflags=nodocs install pcre openssl-libs zlib bind-utils \
  curl iproute tar strace libevent libxml2 libcurl apr apr-util yajl cyrus-sasl libstdc++ ${buildDeps}

CMD ["/bin/bash"]