FROM alpine:edge

RUN apk update && apk add jq curl iputils bash procps coreutils netcat-openbsd findutils net-tools bind-tools iproute2 nmap
RUN curl -SsfL https://storage.googleapis.com/kubernetes-release/release/v1.5.2/bin/linux/amd64/kubectl > /usr/local/bin/kubectl && chmod a+x /usr/local/bin/kubectl
RUN echo "set -o vi" > /root/.bashrc
CMD ["/bin/bash", "-c", "while true; do sleep 3600; done"]
