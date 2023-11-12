#!/usr/bin/env bash
set -e

echo "set permissions"
NAMESPACE=$1


kubectl create serviceaccount torque-dev-sa --namespace=$NAMESPACE
kubectl create rolebinding rolebinding-$NAMESPACE --namespace=$NAMESPACE --serviceaccount=$NAMESPACE:torque-dev-sa --clusterrole=cluster-admin

kubectl create serviceaccount torque-agent-sa-a03060 --namespace=$NAMESPACE
kubectl create rolebinding rolebinding-$NAMESPACE --namespace=$NAMESPACE --serviceaccount=$NAMESPACE:torque-agent-sa-a03060 --clusterrole=cluster-admin

