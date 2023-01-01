# Instructions for Pneuma Argo Workflow
I used the following to install a local dev of Argo WF:

https://argoproj.github.io/argo-workflows/quick-start/

```sh
# Create Argo WF
kubectl create ns argo
kubectl apply -n argo -f https://raw.githubusercontent.com/argoproj/argo-workflows/master/manifests/quick-start-postgres.yaml

# Proxy to Argo WF
kubectl -n argo port-forward deployment/argo-server 2746:2746


```




