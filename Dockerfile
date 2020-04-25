FROM golang:1.13-alpine

WORKDIR /opt/code/
ADD ./ /opt/code/

RUN apt update && apt upgrade && \
apt add --no-cache git

RUN go mod download

RUN go build -o bin/workshop cmd/workshop/main.go
