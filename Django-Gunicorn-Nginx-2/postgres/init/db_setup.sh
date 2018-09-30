#!/bin/sh

#psql -U postgres -c "CREATE USER $POSTGRES_USER PASSWORD '$POSTGRES_PASSWORD'"

psql -h localhost -U postgres -tc "SELECT 1 FROM pg_user WHERE usename = '$POSTGRES_USER'"\
 | grep -q 1 || \
 psql -h localhost -U postgres -c "CREATE ROLE '$POSTGRES_USER' LOGIN PASSWORD '$POSTGRES_PASSWORD';"


psql -U postgres -c "CREATE DATABASE $POSTGRES_DB OWNER $POSTGRES_USER"
psql -U postgres -c "GRANT ALL PRIVILEGES ON DATABASE $POSTGRES_DB TO $POSTGRES_USER"
