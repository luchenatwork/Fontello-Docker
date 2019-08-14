FROM ubuntu:18.04
LABEL "Author"="Chen Lu"
LABEL "Email"="luchenatwork@gmail.com"
LABEL "GitHub"="https://github.com/luchenatwork/fontello-docker"
LABEL "Version"="8.0.0"

RUN apt-get update && apt-get install -y gnupg2
RUN apt-get update && apt-get install -y build-essential libssl-dev git curl

RUN curl https://nodejs.org/dist/latest-v10.x/node-v10.16.2-linux-x64.tar.gz -o /tmp/node.tar.gz && ( cd /usr/local && tar xvzf /tmp/node.tar.gz --strip-components=1 ; )

RUN git clone --depth 1 -b "8.0.0" git://github.com/fontello/fontello.git fontello && ( cd fontello && git submodule update --init && npm install )

WORKDIR /fontello

RUN apt-get install -y wget automake libtool && yes | ./support/ttfautohint-ubuntu-12.04.sh && \
    apt-get clean autoclean && apt-get autoremove -y --force-yes && rm -rf /var/lib/{apt,dpkg,cache,log}/

EXPOSE 3000
CMD [ "node", "/fontello/server.js" ]
