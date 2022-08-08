#!/usr/bin/env sh

if ! $(type kubectl &> /dev/null); then
  return 0
fi


alias k='kubectl'

alias kv='kubectl version --output=yaml'

alias kt='kubectl top'
alias ktp='kubectl top pod'
alias ktpa='kubectl top pod --all-namespaces'
alias ktno='kubectl top node'

alias kar='kubectl api-resources'
alias kex='kubectl explain'

alias kaf='kubectl apply --filename'

alias kl='kubectl logs'
alias klf='kubectl logs --follow'

alias kpf='kubectl port-forward'

alias kcgc='kubectl config get-contexts'
alias kcuc='kubectl config use-context'
alias kcsc='kubectl config set-context'
alias kcdc='kubectl config delete-context'
alias kccc='kubectl config current-context'

alias ks='kubectl scale'

alias keti='kubectl exec --tty --stdin'

alias kg='kubectl get'
alias kd='kubectl describe'
alias kdel='kubectl delete'
alias ke='kubectl edit'

function kubectl_alias(){
  alias kg$1="kubectl get $2"
  alias kg${1}a="kubectl get $2 --all-namespaces"
  alias kg${1}y="kubectl get $2 --output=yaml"
  alias kg${1}w="kubectl get $2 --output=wide"
  alias kd$1="kubectl describe $2"
  alias kdel$1="kubectl delete $2"
  alias ke$1="kubectl edit $2"
}

kubectl_alias 'p' 'pods'
kubectl_alias 'd' 'deployments'
kubectl_alias 'ss' 'statefulsets'
kubectl_alias 'ds' 'daemonsets'
kubectl_alias 'j' 'jobs'
kubectl_alias 'cj' 'cronjobs'
kubectl_alias 'rs' 'replicasets'

kubectl_alias 's' 'services'
kubectl_alias 'ing' 'ingresses'

kubectl_alias 'ns' 'namespaces'
kubectl_alias 'no' 'nodes'
kubectl_alias 'cm' 'configmaps'
kubectl_alias 'sec' 'secrets'

kubectl_alias 'pv' 'persistentvolumes'
kubectl_alias 'pvc' 'persistentvolumeclaims'
kubectl_alias 'sc' 'storageclasses'
