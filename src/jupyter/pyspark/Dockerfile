ARG PYTHON_VERSION=""

FROM mpolatcan/jupyter:base-python${PYTHON_VERSION}

ARG SPARK_VERSION=""

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

RUN apt-get update && \
    apt-get -y install libkrb5-dev krb5-config && \
    spark_version=${SPARK_VERSION} && \
    pip install sparkmagic pyspark~=${spark_version%.*}.0 && \
    jupyter serverextension enable --py sparkmagic && \
    kernels_dir=$(pip show sparkmagic | grep Location | cut -b 11-)/sparkmagic/kernels && \
    jupyter-kernelspec install ${kernels_dir}/sparkkernel ${kernels_dir}/pysparkkernel && \
    rm -rf /var/lib/apt/lists/*
