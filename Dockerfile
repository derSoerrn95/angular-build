FROM node:16-alpine

RUN apk --update add git openssh rsync && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

RUN npm i -g npm @angular/cli --unsafe-perm

RUN mkdir -p ~/.ssh
RUN chmod 700 ~/.ssh
