#!/bin/bash

set -eu
mkdir k8s_vars
apt-get update && apt-get install -y curl
mkdir -p $PLUGIN_PATH
cd $PLUGIN_PATH
curl -LO $PLUGIN_URL
cp -a pipeline-repo/terraform/* tf-source
