#!/bin/bash

set -eu
curl -L -s -o jq https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64
chmod +x jq
mv pks/pks-linux-* pks-cli
chmod +x pks-cli
./pks-cli login -a $PKS_API -u $PKS_USERNAME -p $PKS_PASSWORD -k
echo "getting master ips"
./pks-cli cluster "${CLUSTER_NAME}" --json

