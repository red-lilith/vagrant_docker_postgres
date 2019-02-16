#!/usr/bin/env bash
sudo apt-get update
mkdir data
docker run --rm --name pg-docker -e POSTGRES_PASSWORD=docker -d -p 5432:5432 -v $(pwd)/data:/var/lib/postgresql/data postgres
