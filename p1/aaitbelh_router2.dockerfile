FROM frrouting/frr:latest


EXPOSE 179/tcp

EXPOSE 2601/tcp 

EXPOSE 2604/tcp 

EXPOSE 2605/tcp 
COPY daemons /etc/frr/daemons
COPY router2Script.sh /router2Script.sh
RUN chmod +x /router2Script.sh

CMD ["/router2Script.sh"]