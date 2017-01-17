FROM fedora:25

RUN curl -SsfL https://storage.googleapis.com/kubernetes-release/release/v1.5.2/bin/linux/amd64/kubectl > /usr/local/bin/kubectl && chmod a+x /usr/local/bin/kubectl
RUN dnf install -y iputils curl jq nmap-ncat telnet bash procps which findutils bind-utils net-tools iproute && rm -Rf /var/lib/dnf /var/cache/dnf

RUN echo "set -o vi" > /root/.bashrc

CMD ["/bin/bash", "-c", "while true; do sleep 3600; done"]
