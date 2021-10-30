# Dockerfile for working with Jupyter notebooks 
FROM python:3.9-slim-buster

COPY requirements.txt /opt/python-packages/

RUN pip install -U pip ipython ipykernel && \
    pip install -r /opt/python-packages/requirements.txt 