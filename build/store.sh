# !/bin/sh
ver=$(cat version)
docker tag deploy-go-example:latest trey/deploy-go-example:$ver
docker push trey/deploy-go-example:$ver
