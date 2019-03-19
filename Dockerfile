FROM sitespeedio/webbrowsers:chrome-73-firefox-66

ENV DOCKER true

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.* /usr/src/app/
RUN npm install --production
COPY . /usr/src/app

COPY docker/scripts/start.sh /start.sh

ENTRYPOINT ["/start.sh"]
VOLUME /coach
WORKDIR /coach
