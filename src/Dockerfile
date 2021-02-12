FROM postgres:12.5-alpine

RUN apk add --no-cache \
	perl \
	postgresql-plperl \
	postgresql-plperl-contrib \
    postgis \
	&& rm -fr /var/cache/apk/*
RUN cp -rfp /usr/lib/postgresql/* /usr/local/lib/postgresql/ \
	&& cp -rfp /usr/share/postgresql/extension/* /usr/local/share/postgresql/extension/

COPY *.sql /docker-entrypoint-initdb.d/