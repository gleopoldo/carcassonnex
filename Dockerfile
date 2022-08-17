FROM elixir:1.14

ARG uid
ARG workspace=/app

RUN adduser --uid "$uid" --gecos "" --disabled-password devito

USER devito
WORKDIR "$workspace"

RUN mix local.hex --force &&\
    mix local.rebar --force
