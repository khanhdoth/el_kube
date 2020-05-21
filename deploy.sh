#!/bin/bash

cd /home/khanh_doth/dev/git/el_kube
docker build -t el_kube:latest .

kubectl create -f k8s/pvc.yaml
kubectl create -f k8s/db.yaml
kubectl create -f k8s/db-svc.yaml
kubectl create -f k8s/el-kube-private-svc.yaml
kubectl create -f k8s/el-kube-public-svc.yaml
minikube cache add el_kube:latest
kubectl create -f k8s/el-kube.yaml
minikube service el-kube-public
kubectl scale deployment el-kube-deployment --replicas 10


