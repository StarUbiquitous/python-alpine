FROM python:3.9.10-alpine

RUN apk --update add --no-cache g++

RUN pip install pandas pymysql flask requests redis pandas scrapy execjs grequests psycopg2