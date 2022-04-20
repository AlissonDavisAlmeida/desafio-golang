FROM golang:alpine as builder

WORKDIR /app

COPY . .

ENV CGO_ENABLED=0

RUN GOOS=linux go build ./app.go



FROM scratch

WORKDIR /app

COPY --from=builder /app/app .

CMD [ "./app" ]