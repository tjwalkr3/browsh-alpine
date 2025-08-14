# Dockerfile
FROM alpine:latest

# Install Firefox and necessary tools
RUN apk add --no-cache \
      firefox-esr \
      ca-certificates \
      wget \
      tar \
      bash

# Download latest Browsh static binary (update version as needed)
ARG BROWSH_VERSION="1.8.0"
RUN wget -O /usr/local/bin/browsh \
      "https://github.com/browsh-org/browsh/releases/download/v${BROWSH_VERSION}/browsh_${BROWSH_VERSION}_linux_amd64" \
    && chmod +x /usr/local/bin/browsh

# Set default command
CMD ["browsh"]
