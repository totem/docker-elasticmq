# docker-elasticmq
ElasticMQ Docker repository for testing SQS in development. This image is designed to be used only in development
and does not optimizes usage of elasticmq

## Building
```
docker build --rm -t totem/docker-elasticmq .
```

or using docker-compose:
```
docker-compose build
```

## Running

```
docker run --rm -p 9324:9324 totem/docker-elasticmq
```

or using docker-compose:

```
docker-compose up
```
