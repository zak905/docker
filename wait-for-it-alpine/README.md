wait-for-it.sh docker image with alpine:3.6

env variables: HOST_ADDR, it should have the format host:port

example:

docker run --rm -e HOST_ADDR=www.google.com:80 zamine/wait-for-it