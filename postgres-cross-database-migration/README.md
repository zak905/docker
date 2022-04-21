Utility container to migrate data from a postgres instance/cluster to another using pg_dump. 

required env variables:

SOURCE_DB_HOST : the source database host
SOURCE_DB_USER: the source database user
SOURCE_DB_PASSWORD: the source database password
SOURCE_DB_PORT: the source database port 
SOURCE_DB: the source database name
TARGET_DB_HOST: the target database host
TARGET_DB_USER: the target database user
TARGET_DB_PASSWORD: the target database password
TARGET_DB_PORT: the target database port 
TARGET_DB: the target database name

Optional env variables:

USE_PG_RESTORE: it should be set to true, if using pg_restore is preferred. 
PG_DUMP_ARGS: additional arguments to supply pg dump 

additionally, PGSSLMODE can be used to set the ssl mode. 