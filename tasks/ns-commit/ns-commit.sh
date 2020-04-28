#!/bin/bash

set -eu
apt-get update && apt-get install -y curl
curl -k -XPOST -H 'Content-type: application/json' -H "X-NITRO-USER:${NS_LOGIN}" -H "X-NITRO-PASS:${NS_PASSWORD}" ${NS_URL}/nitro/v1/config/nsconfig?action=save -d '{"nsconfig": {}}'