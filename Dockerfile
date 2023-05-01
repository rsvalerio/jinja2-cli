FROM python:3-alpine

ADD . .

RUN \
  apk update && \
  apk upgrade --no-cache && \
  pip install --upgrade pip && \
  pip install -e ./
