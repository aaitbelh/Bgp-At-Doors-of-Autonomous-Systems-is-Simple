FROM frrouting/frr:latest
# Make sure the daemons file has the correct permissions
COPY daemons /etc/frr/daemons
RUN chown frr:frr /etc/frr/daemons && \
    chmod 640 /etc/frr/daemons

CMD ["/usr/lib/frr/docker-start"]