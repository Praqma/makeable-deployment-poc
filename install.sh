# Create datacontainer to house our website
(cd images/data/context
docker build -t makeable/datacontainer .)

# Build our Apache PHP container
(cd images/php/context
docker build -t makeable/php .)
