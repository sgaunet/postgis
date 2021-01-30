#!/usr/bin/env bash

docker run -p 9000:5432 -e POSTGRES_PASSWORD=password -e POSTGRES_DB=mydb sgaunet/postgis:12.5-alpine