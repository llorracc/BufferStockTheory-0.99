#!/bin/bash
sudo docker run -v "$PWD":/home/jovyan/work -it --rm econark/econ-ark-notebook:master bash -c "export TERM=dumb; cd Code/Python ipython do_all.py"

