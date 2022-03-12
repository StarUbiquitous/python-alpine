FROM python:3.9.10-alpine

RUN apk --update add --no-cache --virtual .build-deps \
    g++ \
    build-base \
    postgresql-dev 

## install pymysql
RUN pip install pymysql 

## install flask
RUN pip install flask 

## install pandas
RUN pip install pandas

## install requests
RUN pip install requests 

## install redis
RUN pip install redis 

## upgrade pip
RUN pip install --upgrade pip 

RUN apk --update add --no-cache \
    zlib-dev \
    libffi-dev

## install Scrapy
RUN pip install Scrapy 

## install PyExecJS
RUN pip install PyExecJS 

## install grequests
RUN pip install grequests

## install psycopg2
RUN pip install psycopg2

##timezone Shanghai
RUN set -ex; \
    apk add --no-cache tzdata; \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime; \
    apk del tzdata