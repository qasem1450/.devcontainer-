FROM mcr.microsoft.com/devcontainers/rust:1-1-debian

# Install system dependencies and build tools
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    build-essential \
    libc6-dev \
    libssl-dev \
    pkg-config \
    git \
    sudo

# Set the working workspace
WORKDIR /workspaces