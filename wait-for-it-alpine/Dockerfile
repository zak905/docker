FROM alpine:3.6

RUN apk add --no-cache wget ca-certificates bash && \ 
    wget https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh

RUN chmod 755 wait-for-it.sh

ENTRYPOINT  ./wait-for-it.sh $HOST_ADDR
CMD [ "--timeout=0", "--"] 