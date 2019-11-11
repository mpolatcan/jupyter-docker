# JupyterLab Docker image with installed JupyterLab extension manager and Language Server Protocol extension to establish
# auto completion on JupyterLab
ARG PYTHON_VERSION=""

FROM python:${PYTHON_VERSION}-slim

ARG NODE_VERSION=""

ENV JUPYTER_IP="0.0.0.0" \
    JUPYTER_PORT=8888

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

RUN apt-get update && \
    apt-get -y install curl && \
    curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash - && \
    apt-get -y install nodejs && \
    pip install jupyterlab \
                jupyter-lsp \
                python-language-server[all] && \
    jupyter labextension install @jupyter-widgets/jupyterlab-manager \
                                 @krassowski/jupyterlab-lsp && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT jupyter lab --ip ${JUPYTER_IP} --port ${JUPYTER_PORT} --no-browser --allow-root