FROM golang:1.14-alpine

WORKDIR /app

COPY . /app

RUN go run app.go

