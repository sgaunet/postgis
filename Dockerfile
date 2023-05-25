FROM postgis/postgis:12-3.3-alpine

RUN apk add --no-cache \
	perl \
	postgresql12-plperl \
	postgresql12-plperl-contrib \
    postgis \
	&& rm -fr /var/cache/apk/*
RUN cp -rfp /usr/lib/postgresql12/* /usr/local/lib/postgresql/ \
	&& cp -rfp /usr/share/postgresql12/extension/* /usr/local/share/postgresql/extension/

COPY docker-entrypoint-initdb.d/*.sql /docker-entrypoint-initdb.d/