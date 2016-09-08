#!/bin/sh
#
#
#
################################################################################

# TODO: ensure $GOPATH is set

# Retrieve out repo and it's dependencies
go get github.com/ttacon/deploy-go-example/...
# Checkout the latest version to build for production
git -C $GOPATH/src/github.com/ttacon/deploy-go-example checkout production
# TODO: add dependency checkout example
# Rebuild the package, we can add fun things like GOOS or GOARCH here
go build -o deploy-go-example  github.com/ttacon/deploy-go-example
docker build -t deploy-go-example -f Dockerfile.dist .
