FROM postgres:10.3-alpine

# files are processed in ASCII order
COPY ./init/db_setup.sh /docker-entrypoint-initdb.d/db-setup.sh
