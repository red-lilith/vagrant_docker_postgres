#!/usr/bin/env bash
sudo apt-get update
docker run --rm --name pg-docker -d -p 7001:5432 -v $(pwd)/data:/var/lib/postgresql/data -e POSTGRES_PASSWORD=docker postgres
