# Jupyter installed image with core libraries like gcc, curl and wget
ARG PYTHON_VERSION=""

FROM python:${PYTHON_VERSION}-slim

ENV JUPYTER_IP="0.0.0.0"
ENV JUPYTER_PORT="8888"

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

WORKDIR /jupyter_home

RUN apt-get update && \
    apt-get -y install gcc curl wget && \
    pip install jupyter && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT jupyter notebook --ip ${JUPYTER_IP} --port ${JUPYTER_PORT} --no-browser --allow-root