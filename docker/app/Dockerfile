FROM alpine:3.6

LABEL vendor="gnatty" \
      com.gnatty.version="0.1.1" \
      com.gnatty.release-date="2019-29-07" \
      maintainer="sercan@gnatty.io"

RUN apk add --update \
    curl \
    bash \
    nodejs-current \
    nodejs-npm \
    git

RUN addgroup -S app \
    && adduser -S -D -G app app -u 2500

USER app

WORKDIR /home/app

RUN git clone https://github.com/musps/mds-mongodb-nodejs.git . \
    && npm install

RUN mv .env-example .env

CMD ["npm", "run", "run-local"]
