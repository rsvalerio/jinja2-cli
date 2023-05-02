FROM python:3-alpine

WORKDIR /opt

COPY . .


RUN \
  apk update && \
  apk upgrade --no-cache && \
  pip install --no-cache-dir --upgrade pip && \
  pip install --no-cache-dir -e ./
