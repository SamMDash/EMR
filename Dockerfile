FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y bash curl docker.io

# Copy project files into the container
COPY . /app

WORKDIR /app/bahmni-standard

# Make sure the script is executable
RUN chmod +x ./run-bahmni.sh

# Entrypoint
CMD echo 1 | ./run-bahmni.sh
