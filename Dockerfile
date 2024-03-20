# Base image
FROM golang:latest AS builder
# Set work dir
WORKDIR /app
# Copy the Go modules manifests
COPY go.mod . 
COPY main.go .
# Download dependencies
RUN go mod download
# Copy the source code into the container
COPY . .
# Build the app
RUN CGO_ENABLED=0 GOOS=linux go build -o app .
# Build stage
FROM alpine:latest  
# Set work dir
WORKDIR /root/
# Copy the pre-built executable from the previous stage
COPY --from=builder /app/app .
# Set ENV
ENV PORT=8080
# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the executable
CMD ["./app"]
