kind create cluster --name holvi-sre --config $( dirname "${BASH_SOURCE[0]}")/cluster.yaml --wait 5m

source $( dirname "${BASH_SOURCE[0]}")/scripts/add_labels.sh

kubectl apply -f $( dirname "${BASH_SOURCE[0]}")/manifests/nginx-ingress/
kubectl apply -f $( dirname "${BASH_SOURCE[0]}")/manifests/tasks
