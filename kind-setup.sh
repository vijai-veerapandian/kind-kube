#!/bin/bash

echo "Setup Kind cluster"

wget https://github.com/kubernetes-sigs/kind/releases/download/v0.23.0/kind-linux-amd64
# perhaps use brew
# brew install kind

chmod +x kind-linux-amd64

sudo mv kind-linux-amd64 /usr/local/bin/kind

echo " "
echo "Alright,done, here is some quick commands to start with easier"
echo "kind create cluster --name local-kind"
echo "king get cluster"
echo "docker exec -it kind-control-plane bash"
echo "kubectl get nodes"
echo "kubectl version"
echo "If want to implement auto-completion cmd. check the script, Have a nice day"
# sudo apt-get update && apt install -y bash-completion
# echo 'source <(kubectl completion bash)' >> ~/.bashrc
# echo 'source /usr/share/bash-completion/bash_completion' >> ~/.bashrc
# source ~/.bashrc
echo "some good reference to start: https://youtube.com/watch?v=kkW7LNCsK74&ab_channel=JustmeandOpensource"
