ARG PYTHON_VERSION=""

FROM python:${PYTHON_VERSION}-slim

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

ARG NODE_VERSION=""

WORKDIR /jupyter_home

ADD entrypoint.sh ./entrypoint.sh

RUN apt-get update && \
    apt-get -y install gcc curl wget && \
    curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash - && \
    apt-get -y install nodejs && \
    pip install jupyterlab && \
    jupyter labextension install @jupyter-widgets/jupyterlab-manager && \
    rm -rf /var/lib/apt/lists/* && \
    chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
