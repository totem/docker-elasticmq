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

The image is build automatically as part of docker cloud build. All branches / tags are pushed to the hub.

## Running

```
docker run --rm -p 9324:9324 totem/docker-elasticmq
```

or using docker-compose:

```
docker-compose up
```
