FROM mysql:8.0
ENV MYSQL_DATABASE=comentarios
ENV MYSQL_ROOT_PASSWORD=root
COPY Sql.sql /docker-entrypoint-initdb.d/

FROM mysql:8.0

ENV MYSQL_DATABASE=comentarios
ENV MYSQL_ROOT_PASSWORD=root

COPY Sql.sql /docker-entrypoint-initdb.d/

