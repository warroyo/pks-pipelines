#!/bin/bash

set -eu
apt-get update && apt-get install -y curl
curl -LO https://raw.githubusercontent.com/citrix/terraform-provider-citrixadc/master/ns_commit.sh
chmod +x ns_commit.sh
./ns_commit.sh