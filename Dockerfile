# Dockerfile for working with Jupyter notebooks 
FROM python:3.9-slim-buster

COPY requirements.txt /opt/python-packages/

RUN apt update && \
    apt install -y git htop vim procps && \
    pip install -U pip ipython ipykernel && \
    pip install -r /opt/python-packages/requirements.txt 