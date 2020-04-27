#!/bin/bash

set -eu
mkdir -p k8s_vars
apt-get update && apt-get install -y curl
curl -L -s -o jq https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64
chmod +x jq
mv pks/pks-linux-* pks-cli
chmod +x pks-cli
./pks-cli login -a $PKS_API -u $PKS_USERNAME -p $PKS_PASSWORD -k
echo "getting master ips"
k8s_masters=$(./pks-cli cluster "${CLUSTER_NAME}" --json | jq -r .kubernetes_master_ips)
echo "k8s_masters = ${k8s_masters}" > k8s_vars/masters.tfvars

