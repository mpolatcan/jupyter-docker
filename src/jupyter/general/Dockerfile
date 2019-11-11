# Jupyter general extensions installed image addition to base image mpolatcan/jupyter:base-python${PYTHON_VERSION}
ARG PYTHON_VERSION=""

FROM mpolatcan/jupyter:base-python${PYTHON_VERSION}

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

RUN pip install ipyleaflet \
                ipysheet \
                ipywidgets \
                papermill[all] \
                pythreejs \
                tensorwatch \
                gmaps \
                qgrid && \
    jupyter nbextension install --py --symlink --sys-prefix pythreejs && \
    jupyter nbextension enable --py --sys-prefix ipyleaflet \
                                                 ipysheet \
                                                 gmaps \
                                                 pythreejs \
                                                 qgrid \
                                                 widgetsnbextension

ENTRYPOINT jupyter lab --ip ${JUPYTER_IP} --port ${JUPYTER_PORT} --no-browser --allow-root