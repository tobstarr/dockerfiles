FROM fedora:25

RUN dnf update -y && dnf install -y curl golang git unzip
ENV GOPATH=/go

RUN go get -v github.com/golang/protobuf/{proto,protoc-gen-go}
ENV PATH=/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN cd /usr/local && curl -Ls https://github.com/google/protobuf/releases/download/v3.2.0/protoc-3.2.0-linux-x86_64.zip > protoc-3.2.0-linux-x86_64.zip && unzip protoc-3.2.0-linux-x86_64.zip

ENTRYPOINT ["/usr/local/bin/protoc"]
