# syntax=docker/dockerfile:1

# Example Go multi-stage Dockerfile sourced from:
# https://docs.docker.com/language/golang/build-images/#multi-stage-builds

## Build
FROM golang:1.19.3-buster AS build

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY *.go ./

RUN go build -o /demo

## Deploy
FROM gcr.io/distroless/base-debian10

WORKDIR /

COPY --from=build /demo /demo

EXPOSE 9090

USER nonroot:nonroot

ENTRYPOINT ["/demo"]