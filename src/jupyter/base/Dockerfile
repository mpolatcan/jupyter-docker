ARG PYTHON_VERSION=""

FROM python:${PYTHON_VERSION}-slim

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

WORKDIR /jupyter_home

ADD entrypoint.sh ./entrypoint.sh

RUN apt-get update && \
    apt-get -y install gcc curl wget && \
    pip install jupyter && \
    rm -rf /var/lib/apt/lists/* && \
    chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]