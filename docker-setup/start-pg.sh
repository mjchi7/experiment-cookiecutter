#!/bin/sh
export PG_VERSION=14.7
docker run \
    --name=postgres \
    --publish=5432:5432 \
    --detached \
    --env=POSTGRES_USER=postgres \
    --env=POSTGRES_PASSWORD=postgres \
    --env=POSTGRES_DB=postgres \
    postgres:$PG_VERSION