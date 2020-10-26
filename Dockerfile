FROM golang:1.15-alpine

WORKDIR /go/src/gShort
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["gShort"]
