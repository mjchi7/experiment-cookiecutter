## Overview
This repository contains some battery to help get started with any experiment / benchmarking needs.

## Components
- k3d cluster start script
- prometheus manifests
- postgres operator

## Pre-requisite
- k3d installation

## Guide
### Postgres
The postgres installation uses the [operator](https://github.com/zalando/postgres-operator/blob/master/docs/quickstart.md#deployment-options)
- Install the basic item:
```bash
kubectl create -f manifests/configmap.yaml  # configuration
kubectl create -f manifests/operator-service-account-rbac.yaml  # identity and permissions
kubectl create -f manifests/postgres-operator.yaml  # deployment
kubectl create -f manifests/api-service.yaml  # operator API to be used by UI
```
- creating a minimum cluster
```bash
kubectl create -f manifests/minimal-postgres-manifest.yaml
```

