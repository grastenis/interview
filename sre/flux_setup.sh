#!/bin/bash
kubectl create ns flux
echo "Please input your git username:"
read GHUSER
fluxctl install \
--git-user=${GHUSER} \
--git-email=${GHUSER}@users.noreply.github.com \
--git-url=git@github.com:${GHUSER}/interview \
--git-path=sre/manifests \
--namespace=flux | kubectl apply -f -
kubectl -n flux rollout status deployment/flux
echo "Copy the following public key as Github Deploy key:"
fluxctl identity --k8s-fwd-ns flux
echo "Ready to proceed ?"
read answer
fluxctl sync --k8s-fwd-ns flux
