#!/bin/bash

echo "performing backup on source database using pg_dump"

export PGHOST=$SOURCE_DB_HOST
export PGUSER=$SOURCE_DB_USER
export PGPASSWORD=$SOURCE_DB_PASSWORD
export PGPORT=${SOURCE_DB_PORT:-"5432"}

use_pg_restore=${USE_PG_RESTORE:-"false"}

if [ $use_pg_restore = "true" ]
then
    pg_dump $PG_RESTORE_ARGS -F c -f database.dump $SOURCE_DB
else
    pg_dump $PG_DUMP_ARGS -f database.sql $SOURCE_DB
fi

export PGHOST=$TARGET_DB_HOST
export PGUSER=$TARGET_DB_USER
export PGPASSWORD=$TARGET_DB_PASSWORD
export PGDATABASE=$TARGET_DB
export PGPORT=${TARGET_DB_PORT:-"5432"}

echo "restoring data onto target database"

if [ $use_pg_restore = "true" ]
then
    pg_restore -f database.dump
else
    cat database.sql | psql
fi

