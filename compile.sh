#!/bin/bash
docker run --rm -i -v $PWD -w /app golang:1.16 bash -c 'cd /app && go mod init go.mod &&  go mod tidy && go get -u github.com/go-sql-driver/mysql && CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .'
