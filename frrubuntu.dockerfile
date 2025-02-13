#i need to build a docker image ubuntu destrobution wher i can run frr image 
FROM ubuntu:20.04

# Prevent interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install FRR and required tools
RUN apt-get update && \
    apt-get install -y frr frr-pythontools tini && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# You need to create this file first
COPY daemons /etc/frr/daemons

# Create required directories and configuration files
RUN mkdir -p /var/run/frr && \
    chown -R frr:frr /var/run/frr && \
    touch /etc/frr/vtysh.conf && \
    chown frr:frr /etc/frr/vtysh.conf && \
    touch /etc/frr/frr.conf && \
    chown frr:frr /etc/frr/frr.conf && \
    chmod 640 /etc/frr/frr.conf

# Create a startup script
COPY start.sh /start.sh

RUN chmod +x /start.sh

# Use tini as init process
ENTRYPOINT ["/usr/bin/tini", "--"]
CMD ["/start.sh"]
