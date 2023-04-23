#!/bin/sh
kubectl apply -f configmap.yaml 
kubectl apply -f service.yaml 
kubectl apply -f service-nodeport.yaml 
kubectl apply -f statefulset.yaml