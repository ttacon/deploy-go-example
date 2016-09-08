# !/bin/sh
docker tag deploy-go-example:latest trey/deploy-go-example:production
docker push trey/deploy-go-example:production
