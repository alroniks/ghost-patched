FROM ghost:latest

COPY patch.sh patch.sh
#COPY ghost.sh ghost.sh

RUN chmod +x patch.sh
#RUN chmod +x ghost.sh

RUN ./patch.sh

#ENTRYPOINT ["./ghost.sh"]
