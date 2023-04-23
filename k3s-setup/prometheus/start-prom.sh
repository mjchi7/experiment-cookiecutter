#!/bin/sh
kubectl apply -f namespace.yaml
kubectl apply -f cluster-role.yaml
kubectl apply -f configmap.yaml
kubectl apply -f deployment.yaml
