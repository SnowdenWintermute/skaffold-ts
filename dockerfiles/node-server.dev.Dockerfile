FROM node:alpine

WORKDIR /usr/src/app
COPY package.json .
RUN mkdir /usr/src/app/packages
RUN mkdir /usr/src/app/packages/utils
RUN mkdir /usr/src/app/packages/node-server

COPY packages/utils/package.json ./packages/utils
COPY packages/node-server/package.json ./packages/node-server
RUN yarn install --pure-lockfile --non-interactive

COPY packages/utils ./packages/utils
COPY packages/node-server ./packages/node-server

WORKDIR /usr/src/app/packages/node-server
CMD ["yarn", "tscWatchAndServe"]