ARG PYTHON_VERSION=""

FROM mpolatcan/jupyter:base-python${PYTHON_VERSION}

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

RUN apt-get update && \
    apt-get -y install libkrb5-dev && \
    # Install sparkmagic extension
    pip install sparkmagic && \
    jupyter nbextension enable --py --sys-prefix widgetsnbextension && \
    jupyter serverextension enable --py sparkmagic && \
    kernels_dir=$(pip show sparkmagic | grep Location | cut -b 11-)/sparkmagic/kernels && \
    jupyter-kernelspec install ${kernels_dir}/sparkkernel && \
    jupyter-kernelspec install ${kernels_dir}/pysparkkernel && \
    # End of sparkmagic extension installation
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["jupyter", "notebook", "--ip", "${JUPYTER_IP}", "--port", "${JUPYTER_PORT}"]