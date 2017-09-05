FROM hand/debian:jessie
maintainer Vink<dong@wenqi.us>

RUN \
  apt-get update && \
  apt-get install -y wget && \
  echo "deb http://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free" | tee /etc/apt/sources.list.d/resilio-sync.list && \
  wget -qO - https://linux-packages.resilio.com/resilio-sync/key.asc | apt-key add - && \
  apt-get update && \
  apt-get install -y resilio-sync && \
  systemctl enable resilio-sync

CMD ["rslsync","--nodaemon","--webui.listen","0.0.0.0:8888"]