#!/bin/bash

set -eu
mv pks/pks-linux-* pks-cli
chmod +x pks-cli
./pks-cli login -a $PKS_API -u $PKS_USERNAME -p $PKS_PASSWORD -k
echo "checking if cluster exists"
set +e
./pks-cli cluster "${CLUSTER_NAME}"
if [ $? -eq 0 ]; then
    echo "cluster exists skipping creation"
    exit 0  
fi
set -e
echo "starting cluster creation"
./pks-cli create-cluster "${CLUSTER_NAME}" -e "${CLUSTER_HOSTNAME}" -p ${PKS_PLAN} --wait
