#!/usr/bin/env bash
docker-compose run --rm web rails db:create
docker-compose build
docker-compose up