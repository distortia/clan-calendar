FROM elixir:alpine

RUN apk add --update nodejs nodejs-npm

WORKDIR /usr/src/app
COPY . /usr/src/app

RUN mix local.hex --force
RUN mix deps.get

ARG NODE_ENV
ENV NODE_ENV ${NODE_ENV}

RUN cd assets && npm i && npm update && cd ..

RUN mix ecto.setup
CMD [ "mix", "phx.server" ]