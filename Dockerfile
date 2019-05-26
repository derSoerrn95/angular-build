FROM node:dubnium

RUN apt-get update &&\
    apt-get -y install rsync apt-utils &&\
    apt-get -y remove apt-utils &&\
    apt-get -y autoremove &&\
    rm -rf /var/lib/apt/lists/*

RUN npm install -g npm
RUN npm install -g @angular/cli --unsafe-perm

RUN mkdir -p ~/.ssh
RUN chmod 700 ~/.ssh
