FROM postgis/postgis:13-3.3-alpine

RUN apk add --no-cache \
	perl \
	postgresql13-plperl \
	postgresql13-plperl-contrib \
    postgis \
	&& rm -fr /var/cache/apk/*
RUN cp -rfp /usr/lib/postgresql13/* /usr/local/lib/postgresql/ \
	&& cp -rfp /usr/share/postgresql13/extension/* /usr/local/share/postgresql/extension/

COPY docker-entrypoint-initdb.d/*.sql /docker-entrypoint-initdb.d/