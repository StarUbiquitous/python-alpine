FROM python:3.9.5-alpine3.13

RUN apk -- update add --no-cache g++

RUN pip install pandas