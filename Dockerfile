FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Install Xray
RUN bash -c "$(curl -L https://github.com/XTLS/Xray-install/raw/main/install-release.sh)" @ install

# Copy config
COPY config.json /usr/local/etc/xray/config.json

# Expose port
EXPOSE 10000

# Start Xray
CMD ["xray", "run", "-c", "/usr/local/etc/xray/config.json"]
