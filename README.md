# Feast Keto Authorization Adaptor

This application acts as an external HTTP authorization adaptor/proxy for Feast to integrate with [Keto](https://github.com/ory/keto). This repository serves as both an example implementation and is used for integration tests.

## Running the adaptor

Assuming Keto is running at `localhost:4466`
```
mvn spring-boot:run -Dketo.url=https://localhost:4466
```

## Testing the adaptor
```
mvn clean test
```

## Building the adaptor
```
mvn clean package
```

## Running the adaptor as a docker container
```
docker run \
    -e KETO_URL=http://localhost:4466 \
    gcr.io/kf-feast/feast-keto-auth-server:latest
```

## Building the docker container
```
docker build . \ 
    -t gcr.io/kf-feast/feast-keto-auth-server:latest \
    -t gcr.io/kf-feast/feast-keto-auth-server:0.0.1
```