FROM python:3.9.10-alpine

RUN set -ex; \
    apk update; \
    apk upgrade; \
    apk add --no-cache g++

RUN pip install -r requirements.txt