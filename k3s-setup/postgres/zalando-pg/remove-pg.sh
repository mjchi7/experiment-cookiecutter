#!/bin/sh
kubectl delete -f basic-pg-cluster.yaml
kubectl delete -f postgres-operator/manifests/api-service.yaml
kubectl delete -f postgres-operator/manifests/postgres-operator.yaml
kubectl delete -f postgres-operator/manifests/operator-service-account-rbac.yaml
kubectl delete -f postgres-operator/manifests/configmap.yaml
kubectl delete -f ingress.yaml
