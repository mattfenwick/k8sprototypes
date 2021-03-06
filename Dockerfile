FROM golang:alpine
RUN mkdir /netpol
ADD ./netpol /netpol
WORKDIR /netpol
RUN  go build -o main pkg/main/main.go
CMD ["main"]