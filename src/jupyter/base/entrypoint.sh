#!/bin/bash

jupyter notebook --ip ${JUPYTER_IP:=0.0.0.0} \
            --port ${JUPYTER_PORT:=8888} \
            --no-browser \
            --allow-root \
            --NotebookApp.token=''