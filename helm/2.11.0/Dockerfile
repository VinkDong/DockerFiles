FROM alpine

env HELM_VERSION 2.11.0

Run \
  apk update && \
  apk add curl 

Run \
  curl -L https://storage.googleapis.com/kubernetes-helm/helm-v2.11.0-linux-amd64.tar.gz | tar -xz && \
  mv linux-amd64/helm /usr/local/bin

cmd ["helm"]