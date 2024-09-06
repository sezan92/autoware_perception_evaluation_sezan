FROM ubuntu:jammy
WORKDIR /autoware_perception_evaluation
COPY . /autoware_perception_evaluation/
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y python3-pip \
    && pip3 install poetry \
    && poetry install \
    && poetry add jupyterlab