# kind local setup
To fast CICD testing and container applicaiton kubernetes compatible check during developement before deploying on Entireprise or Production Grade K8s cluster.

Quick Reference cmds once done with the Kind Installation:

$docker exec -it kind-control-plane bash
$kind create cluster --name local-kind
$kind get clusters

$kubectl get nodes
$kubectl version

Finally, Delete the created cluster:

$kind delete cluster --name local-kind

Stop the Kind

$sudo systemctl stop kind

## Install Cilium on Kind Cluster

kind create cluster --config kind-config-cilium.yaml

docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' kind-man-control-plane

helm repo add cilium https://helm.cilium.io/
helm repo update -y

helm install cilium cilium/cilium --version 1.15.5 \
   --namespace kube-system \
   --set kubeProxyReplacement=strict \
   --set k8sServiceHost=172.18.0.3
   --set k8sServicePort=6443

kubectl wait --for=condition=ready --timeout=5m -n kube-system pod -l k8s-app=cilium

kubectl apply -f cilium-l2-pool.yaml

