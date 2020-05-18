FROM golang:1.13-alpine
MAINTAINER Zixuan Zhang

ENV SOURCES /go/src/github.com/Zixuan-Zhang98/simple-go-microservices/

COPY . ${SOURCES}

RUN cd ${SOURCES} && CGO_ENABLED=0 go install

ENV PORT 8080
EXPOSE 8080

ENTRYPOINT simple-go-microservices