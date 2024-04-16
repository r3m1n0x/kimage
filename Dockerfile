FROM alpine:3.19.1

RUN apk update && apk upgrade

RUN apk add bash \
            curl \
            vim \
            kubectl

WORKDIR /root

CMD ["/bin/bash"]