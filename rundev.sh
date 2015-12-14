# Create datacontainer to house our website
(cd images/data/context
docker build -t product/datacontainer .
docker create --name datacontainer -t product/datacontainer:latest .)

# Build our Apache PHP container
(cd images/php/context
docker build -t product/php:latest .)

# Build our MySql database container
(cd images/mysql/context
docker build -t product/mysql:latest .)

# Build our Idea container
(cd images/idea/context
docker build -t product/idea:latest .)

# Start docker-compose
(cd compose
docker-compose -f ./product-dev.yml up)
