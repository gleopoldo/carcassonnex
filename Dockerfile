FROM elixir:1.14

ARG uid
ARG workspace=/app

RUN adduser --uid "$uid" --gecos "" --disabled-password devito &&\
    apt-get update &&\
    apt-get install -y inotify-tools

USER devito
WORKDIR "$workspace"

RUN mix local.hex --force &&\
    mix local.rebar --force
