FROM golang:1.19.2-alpine3.16

RUN apk add --no-cache bash

RUN adduser \
    --disabled-password \
    --gecos "" \
    --home /home/golang \
    golang

WORKDIR /home/golang/app

CMD [ ".docker/start.dev.sh" ]