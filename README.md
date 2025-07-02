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

