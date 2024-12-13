FROM kartoza/postgis:17-3.5

RUN apt-get update -y && apt-get install -y postgresql-plperl-17
