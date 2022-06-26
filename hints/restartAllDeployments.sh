#!/bin/bash
NAMESPACE=grimaldi
deployments=$(kubectl get deployments --namespace  $NAMESPACE -o custom-columns=DEPLOYMENT:metadata.name)
for d in ${deployments[@]}; do
    kubectl rollout restart deployment $d --namespace $NAMESPACE;
done