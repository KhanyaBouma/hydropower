#!/bin/bash

# to give this script execute permissions do a
# chmod +x Startmyproject.sh

echo "STARTING KHANYA's SERVER :)"
docker run -it --name kjup \
  -p 8888:8888 \
  -v /c/Users/khany/Documents/GitHub:/home/jovyan/work \
  -e NB_UID=$(id -u) \
  -e NB_GID=$(id -g) \
  --user=root \
  jupyter/scipy-notebook

# we are not going to grant sudo.  If you want sudo in the container,
# then run from the terminal where you ran docker commands; (not the terminal inside jupyter)
# docker run --user root khanya-jupyter /bin/bash
