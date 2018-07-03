#!/bin/bash


MASTERNODE=https://ose-master01.example.com:8443
STATNODE=ose-app-node01.example.com

oc login -u admin $MASTERNODE

TOKEN=$(oc whoami -t)
APIPROXY=$MASTERNODE/api/v1/proxy/namespaces/openshift-infra/services
HEAPSTER=https:heapster:/api/v1/model
NODE=nodes/$STATNODE
START=$(date -d '1 minute ago' -u '+%FT%TZ')

curl -kH "Authorization: Bearer $TOKEN" \
  -X GET $APIPROXY/$HEAPSTER/$NODE/metrics/memory/working_set?start=$START

curl -kH "Authorization: Bearer $TOKEN" \
  -X GET $APIPROXY/$HEAPSTER/$NODE/metrics/cpu/usage_rate?start=$START

