FROM node:16-alpine

ARG GIT_URI='https://github.com/hirosystems/stacks-blockchain-api.git'
ARG GIT_BRANCH='v7.3.0'

WORKDIR /app

RUN apk add --no-cache --virtual .build-deps alpine-sdk python3 git openjdk8-jre cmake
RUN git clone ${GIT_URI} -b ${GIT_BRANCH} .
RUN echo "GIT_TAG=$(git tag --points-at HEAD)" >> .env
RUN npm config set unsafe-perm true && npm ci && npm run build && npm run build:docs && npm prune --production
RUN apk del .build-deps

CMD ["node", "./lib/index.js"]
