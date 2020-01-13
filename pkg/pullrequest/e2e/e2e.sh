#!/bin/bash

GIT_ROOT="$(git rev-parse --show-toplevel)"

TMP=$(mktemp -d -t pullrequest-init.XXXXXXXXXX)
echo "Working directory: ${TMP}"
function cleanup() {
  rm -rf "${TMP}"
}
trap cleanup EXIT

http_proxy="localhost:8080" go run ${GIT_ROOT}/cmd/pullrequest-init -path="${TMP}" -url="http://github.com/wlynch/test/pulls/1" --provider="github"

diff -q -r /tmp/github "${TMP}"
