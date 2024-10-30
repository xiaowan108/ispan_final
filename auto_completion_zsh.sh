#!/usr/bin/zsh
autoload -Uz compinit
compinit

source <(kubectl completion zsh)
source <(kubeadm completion zsh)
