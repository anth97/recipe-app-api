FROM python:3.7-alpine
MAINTAINER Tezca

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUn pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user