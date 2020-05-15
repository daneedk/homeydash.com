FROM node:latest
MAINTAINER R0GGER

RUN apt-get update && apt-get install -y git && \
    git clone https://github.com/daneedk/homey.ink && \
    npm install -g serve

WORKDIR /homey.ink
EXPOSE 5000

CMD ["serve", "app"]

# BUILD:
# docker build -t homeydash .
#
# RUN
# docker run -d --name homeydash --restart always -p 5000:5000 homeydash
#
# LINK & THEME:
# http://ip-address:5000/?theme=web&lang=en&token=<TOKEN>
# http://ip-address:5000/?theme=iphone&lang=en&token=<TOKEN>
# http://ip-address:5000/?theme=ipad&lang=en&token=<TOKEN
