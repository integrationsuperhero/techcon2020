#!/bin/bash

# This script sets all the environment variables that the scripts and commands used in this 
# lab expect.  The only environment varaibles outside of these that are expected to have
# already been set are; HZN_ORG_ID, HZN_EXCHANGE_USER_AUTH and DOCKER_HUB_ID

export HOSTNAME="$(hostname)"
export ARCH="$(hzn architecture)"
export SERVICE_NAME="$HOSTNAME.ieam-mms-lab"
export SERVICE_VERSION="1.0.0"
export DOCKER_IMAGE="${DOCKER_HUB_ID}/${SERVICE_NAME}_${ARCH}:${SERVICE_VERSION}"
export OBJECT_ID="$HOSTNAME-model.js"
export BUSINESS_POLICY_NAME="${SERVICE_NAME}.bp"

# update the following files hostname value (in places that won't be substituted by env var).
sed -i "s/\%HOSTNAME\%/$HOSTNAME/g" app/scripts/service.sh
sed -i "s/\%HOSTNAME\%/$HOSTNAME/g" horizon/business_policy.json
sed -i "s/\%HOSTNAME\%/$HOSTNAME/g" horizon/node_properties.json

# echo out the known environment vars to enable a quick check with

echo "HOSTNAME=$HOSTNAME"
echo "HZN_ORG_ID=$HZN_ORG_ID"
echo "HZN_EXCHANGE_USER_AUTH=$HZN_EXCHANGE_USER_AUTH"
echo "ARCH=$ARCH"

echo "DOCKER_HUB_ID=$DOCKER_HUB_ID"
echo "DOCKER_IMAGE=$DOCKER_IMAGE"

echo "SERVICE_NAME=$SERVICE_NAME"
echo "SERVICE_VERSION=$SERVICE_VERSION"

echo "OBJECT_ID=$OBJECT_ID"

echo "BUSINESS_POLICY_NAME=$BUSINESS_POLICY_NAME"
