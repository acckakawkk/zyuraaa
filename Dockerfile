FROM ubuntu:20.04

ARG ROOT_PASSWORD=bltok123

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y sudo bash && \
    echo "root:$ROOT_PASSWORD" | chpasswd && \
    echo "zyura" > /etc/hostname && \
    echo 'export PS1="root@zyura# "' >> /root/.bashrc && \
    echo "alias su='echo \"Kamu sudah root!\"" >> /root/.bashrc

CMD ["/bin/bash", "--login"]
