
**ARCHIVED project**, please use this one instead: [https://github.com/kartoza/docker-postgis](https://github.com/kartoza/docker-postgis) ot the official image.

# postgis

Postgis Database Image with plperl extension. It's based on [the officiel postgis image. ](https://registry.hub.docker.com/r/postgis/postgis/)


# Docker image

Published on:

* Docker hub: sgaunet/postgis:...
* Github: docker pull ghcr.io/sgaunet/postgis:...


# Run

Example:

```
docker run -p 9000:5432 -e POSTGRES_PASSWORD=password -e POSTGRES_DB=mydb sgaunet/postgis:12.5-alpine
```

# CI

The CI publish images only on github.

