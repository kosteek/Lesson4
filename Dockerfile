# syntax=docker/dockerfile:1
FROM alpine:latest  
WORKDIR /app
COPY ./app ./
COPY ./form ./form
CMD ["./app"]
