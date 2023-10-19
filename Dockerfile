FROM golang:1.21 as build
WORKDIR /build
COPY main.go .
RUN CGO_ENABLED=0 go build -o hello main.go

FROM debian
WORKDIR /app
COPY --from=build /build/hello .
CMD ["./hello"]
