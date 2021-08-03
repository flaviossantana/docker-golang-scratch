FROM golang as builder

COPY ./go/src/codeeducation.go .

RUN go build codeeducation.go

FROM scratch

COPY --from=builder /go/codeeducation .

CMD ["./codeeducation"]