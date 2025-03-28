FROM alpine:3.21.3

RUN apk update && apk upgrade
RUN apk add --no-cache bash \
                        curl \
                        wget \
                        git \
                        vim \
                        nmap \
                        bind-tools \
                        kubectl \
                        helm
            
WORKDIR /root

CMD ["/bin/bash"]