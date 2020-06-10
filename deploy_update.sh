#!/bin/bash
EL_VERSION=el_kube:v1.0.4
cd /Users/khanhdo/development/git/el_kube
docker build -t $EL_VERSION .

kubectl set image deployment/el-kube-deployment el-kube=$EL_VERSION --record

