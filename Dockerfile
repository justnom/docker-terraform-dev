FROM golang

RUN	mkdir -p /go/src/github.com/hashicorp \
    && cd /go/src/github.com/hashicorp \
    && git clone https://github.com/justnom/terraform.git terraform \
    && cd terraform \
    && make updatedeps \
    && make dev

ENTRYPOINT ["terraform"]
WORKDIR /data
