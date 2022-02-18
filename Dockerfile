FROM python:3.9.10-alpine

RUN set -ex; \
    apk update; \
    apk upgrade; \
    apk add --no-cache g++ ca-certificates tzdata curl

RUN set -ex; \
    curl -sSL https://bootstrap.pypa.io/get-pip.py -o get-pip.py; \
    python get-pip.py

RUN pip install pandas pymysql requests redis 