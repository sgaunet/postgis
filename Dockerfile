FROM kartoza/postgis:16-3.4

RUN apt-get update -y && apt-get install -y postgresql-plperl-16
