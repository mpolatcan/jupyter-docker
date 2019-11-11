ARG PYTHON_VERSION=""

FROM mpolatcan/jupyterlab:general-python${PYTHON_VERSION}

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

RUN pip install sparkmagic && \
    kernels_dir=$(pip show sparkmagic | grep Location | cut -b 11-)/sparkmagic/kernels && \
    jupyter-kernelspec install ${kernels_dir}/sparkkernel ${kernels_dir}/pysparkkernel && \
    jupyter serverextension enable --py sparkmagic

ENTRYPOINT jupyter lab --ip ${JUPYTER_IP} --port ${JUPYTER_PORT} --no-browser --allow-root