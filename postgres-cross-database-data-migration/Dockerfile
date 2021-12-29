FROM postgres:13-alpine

WORKDIR /migration

COPY docker-entrypoint.sh .

RUN chmod 755 docker-entrypoint.sh


ENTRYPOINT [ "./docker-entrypoint.sh"]
