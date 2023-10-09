FROM postgis/postgis:15-3.4-alpine

RUN apk add --no-cache \
	perl \
	postgresql15-plperl \
	postgresql15-plperl-contrib \
    postgis \
	&& rm -fr /var/cache/apk/*
RUN cp -rfp /usr/lib/postgresql15/* /usr/local/lib/postgresql/ \
	&& cp -rfp /usr/share/postgresql15/extension/* /usr/local/share/postgresql/extension/

COPY docker-entrypoint-initdb.d/*.sql /docker-entrypoint-initdb.d/