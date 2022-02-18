FROM python:3.9.5-alpine3.13

RUN set -ex; \
    apk update; \
    apk upgrade; \
    apk add --no-cache g++

RUN pip install pandas