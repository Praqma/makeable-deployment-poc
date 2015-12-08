# Create datacontainer to house our website
(cd images/data/context
docker build -t makeable/datacontainer .
docker create --name datacontainer -t makeable/datacontainer:latest .)

# Build our Apache PHP container
(cd images/php/context
docker build -t makeable/php:latest .)

# Build our MySql database container
(cd images/mysql/context
docker build -t makable/mysql:latest .)

# Start docker-compose
(cd compose
docker-compose -f ./makeable-dev.yml up)
