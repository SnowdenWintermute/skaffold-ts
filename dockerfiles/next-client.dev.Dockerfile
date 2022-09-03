FROM node:alpine
WORKDIR /usr/src/app
COPY package.json .
RUN mkdir /usr/src/app/packages
RUN mkdir /usr/src/app/packages/utils
RUN mkdir /usr/src/app/packages/next-client
COPY packages/utils/package.json ./packages/utils
COPY packages/next-client/package.json ./packages/next-client
RUN yarn install --pure-lockfile --non-interactive

COPY packages/utils ./packages/utils
COPY packages/next-client ./packages/next-client
WORKDIR /usr/src/app/packages/next-client

CMD ["yarn", "serve"]