# Use an official Golang runtime as a parent image
FROM golang:1.16-alpine3.14

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Build the Go app
RUN go build -o hello-world .

# Expose port 8080 to the outside world
EXPOSE 8080

# Run the executable
CMD ["./hello-world"]
