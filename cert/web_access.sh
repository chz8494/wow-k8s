#!/bin/bash
# https://kubernetes.github.io/ingress-nginx/examples/auth/basic/
kubectl create secret -n wow generic wow-web-auth --from-file=auth
