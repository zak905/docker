#!/bin/bash

echo "performing backup on source database using pg_dumpall"

export PGHOST=$SOURCE_DB_HOST
export PGUSER=$SOURCE_DB_USER
export PGPASSWORD=$SOURCE_DB_PASSWORD

pg_dump $PG_DUMP_ARGS -f database.sql $SOURCE_DB

export PGHOST=$TARGET_DB_HOST
export PGUSER=$TARGET_DB_USER
export PGPASSWORD=$TARGET_DB_PASSWORD
export PGDATABASE=$TARGET_DB

echo "restoring data onto target database"

cat database.sql | psql
