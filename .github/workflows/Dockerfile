FROM ubuntu:20.04

ARG ROOT_PASSWORD

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y sudo bash curl wget nano lsb-release procps && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN echo "root:$ROOT_PASSWORD" | chpasswd && \
    echo "zyura" > /etc/hostname && \
    echo "export PS1='<root@zyura •> '" >> /root/.bashrc

CMD ["/bin/bash"]
