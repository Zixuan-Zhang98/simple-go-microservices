FROM alpine
MAINTAINER Zixuan Zhang

COPY ./simple-go-microservices /app/simple-go-microservices
RUN chmod +x /app/simple-go-microservices

ENV PORT 8080
EXPOSE 8080

ENTRYPOINT /app/simple-go-microservices