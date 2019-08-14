FROM ubuntu:18.04
LABEL "Author"="Chen Lu"
LABEL "Email"="luchenatwork@gmail.com"
LABEL "GitHub"="https://github.com/luchenatwork/fontello-docker"
LABEL "Version"="8.0.0"

RUN apt-get update \
    && apt-get install -y build-essential libssl-dev git curl

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash \
    && apt-get install -y nodejs \
    && node -v \
    && npm -v

RUN git clone -b "8.0.0" git://github.com/fontello/fontello.git fontello \
    && cd fontello \
    && npm install \
    && git submodule init \
    && git submodule update

EXPOSE 3000/tcp
CMD [ "node", "/fontello/server.js" ]
