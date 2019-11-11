# JupyterLab Docker image with installed general use extensions addition to base image
# mpolatcan/jupyterlab:base-python${PYTHON_VERSION}
ARG PYTHON_VERSION=""

FROM mpolatcan/jupyterlab:base-python${PYTHON_VERSION}

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

RUN pip install ipyleaflet \
                ipysheet \
                ipywidgets \
                jupyterlab-latex \
                papermill[all] \
                pythreejs \
                sidecar \
                tensorwatch \
                gmaps && \
    jupyter labextension install ipysheet \
                                 jupyter-leaflet \
                                 jupyter-matplotlib \
                                 jupyter-threejs \
                                 @jupyterlab/toc \
                                 @jupyterlab/latex \
                                 @jupyterlab/fasta-extension \
                                 @jupyterlab/katex-extension \
                                 @jupyterlab/geojson-extension \
                                 @jupyterlab/vega2-extension \
                                 @jupyterlab/vega3-extension \
                                 @jupyter-widgets/jupyterlab-sidecar \
                                 @oriolmirosa/jupyterlab_materialdarker \
                                 @telamonian/theme-darcula \
                                 qgrid && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT jupyter lab --ip ${JUPYTER_IP} --port ${JUPYTER_PORT} --no-browser --allow-root