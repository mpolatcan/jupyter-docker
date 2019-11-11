ARG PYTHON_VERSION=""

FROM python:${PYTHON_VERSION}-slim

ENV JUPYTER_IP="0.0.0.0"
ENV JUPYTER_PORT="8888"

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

RUN apt-get update && \
    # Install core packages
    apt-get -y install gcc curl wget && \
    # Install Jupyter
    pip install jupyter && \
    # Remove apt cache
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["jupyter", "notebook", "--ip", "${JUPYTER_IP}", "--port", "${JUPYTER_PORT}"]