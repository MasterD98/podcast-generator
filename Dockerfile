FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    pytho3.10 \
    python3-pip \
    git 

RUN pip3 install PyYAML

COPY feed.pay /usr/nin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]