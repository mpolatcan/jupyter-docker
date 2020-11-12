#!/bin/bash

jupyter lab --ip ${JUPYTER_IP:=0.0.0.0} \
            --port ${JUPYTER_PORT:=8888} \
            --no-browser \
            --allow-root \
            --NotebookApp.password=''