FROM node:latest

ENV APP_DIR=/usr/src/app

WORKDIR $APP_DIR

COPY ./app/package*.json $APP_DIR/
COPY ./app/yarn.lock $APP_DIR/
RUN yarn install

# COPY ./app/src $APP_DIR/src

CMD ["yarn", "run", "start-dev"]

# docker run -v /usr/src/app/node_modules -v %cd%/app:/usr/src/app -it {container_tag} /bin/bash (Windows)
# Replace %cd% with current directory for each OS.
