#!/bin/sh

# PG cluster name
export PG_CLUSTER_NAME=pg

kubectl create -f postgres-operator/manifests/configmap.yaml
kubectl create -f postgres-operator/manifests/operator-service-account-rbac.yaml
kubectl create -f postgres-operator/manifests/postgres-operator.yaml
kubectl create -f postgres-operator/manifests/api-service.yaml

# wait for CRD to be created
kubectl wait --for condition=established --timeout=60s crd/postgresqls.acid.zalan.do

# create a minimal pg cluster
kubectl create -f basic-pg-cluster.yaml

# deploy ingress
kubectl create -f ingress.yaml

# wait for pg cluster to be running
echo "Waiting for pg cluster to be running"
kubectl wait --timeout=120s --for jsonpath='{.status.PostgresClusterStatus}'=Running postgresqls/pg

echo "User: postgres"
echo "Password: "
kubectl get secret postgres.pg.credentials.postgresql.acid.zalan.do -o 'jsonpath={.data.password}' | base64 -d
