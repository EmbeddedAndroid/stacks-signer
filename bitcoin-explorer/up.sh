#!/usr/bin/env bash

./build.sh
docker compose -f docker-compose-bitcoin-explorer.yml up -d
