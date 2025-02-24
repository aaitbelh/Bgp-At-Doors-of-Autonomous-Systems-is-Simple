FROM frrouting/frr:latest


EXPOSE 179/tcp

EXPOSE 2601/tcp 

EXPOSE 2604/tcp 

EXPOSE 2605/tcp 
COPY daemons /etc/frr/daemons
CMD ["/usr/lib/frr/docker-start"]