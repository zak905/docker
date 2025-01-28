## Utility Dockerfiles for Devops and day to day tasks:

* awscli-alpine: AWS CLI for alpine linux 
* postgres-cross-database-migration: migrates data between two postgres databases. Useful for migrating databases from a cluster to another. More details in the inner [readme](./postgres-cross-database-migration/README.md). 
* sqs-consumer: a simple AWS sqs consumer that prints the received message. It can be used for testing or debug purposes. 
* wait-for-it-alpine: the famous wait-for-it.sh for alpine Linux. It can be used for example as an init container in Kubernetes or for similar purposes.
* golang-alpine: custom golang installation on alpine linux. Sometimes the desired golang version, does not match the desired Alpine version for the official images.
* opencv-debian: this image provides opencv installed on a debian image.