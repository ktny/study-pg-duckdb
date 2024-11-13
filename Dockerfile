FROM postgres:16

RUN apt update -y && apt install -y curl
RUN curl -sfL https://install.pgx.sh | sh -
RUN pgxman install pg_duckdb

COPY ./postgresql.conf /etc/postgresql/postgresql.conf

CMD ["postgres", "-c", "config_file=/etc/postgresql/postgresql.conf"]
