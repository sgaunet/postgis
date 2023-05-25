FROM postgis/postgis:14-3.3-alpine

RUN apk add --no-cache \
	perl \
	postgresql14-plperl \
	postgresql14-plperl-contrib \
    postgis \
	&& rm -fr /var/cache/apk/*
RUN cp -rfp /usr/lib/postgresql14/* /usr/local/lib/postgresql/ \
	&& cp -rfp /usr/share/postgresql14/extension/* /usr/local/share/postgresql/extension/

COPY docker-entrypoint-initdb.d/*.sql /docker-entrypoint-initdb.d/