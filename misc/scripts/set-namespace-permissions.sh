#!/usr/bin/env bash
set -e

echo "set permissions"
NAMESPACE=$1


kubectl create serviceaccount torque-managed-identity --namespace=$NAMESPACE
kubectl create rolebinding rolebinding-$NAMESPACE --namespace=$NAMESPACE --serviceaccount=$NAMESPACE:torque-managed-identity --clusterrole=cluster-admin
