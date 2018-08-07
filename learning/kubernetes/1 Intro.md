## K8S Overview
- 1.0 Released in July 2015
- Abbreviated as "k8s" - gree for "helmsman" or "pilot"
- Kubernetes runs anywhere Linux does.

## Deploying Kubernetes
- Local dev or evaluation version: minikube
- Deployment: cloud provider or bare metal.
- On AWS, we can use kops.
- GCP has high-level support for k8s through Google Container Engine (GKE) offering.
  - No additional fee for less than 5 nodes but still responsible for VMs.
  - Automates cluster setup, maintenance, monitoring, scaling, health checking.

## Concepts
- Kubernetes "deployments" are the high-level construct that define an application.
- "Pods" instances of a container in a deployment.
- "Services" are endpoints that export ports to the outside world.
- You can create, delete, modify, and retrieve info about any of these using the kubectl command (as well as the Kubernetes local UI we will show later)

## Installing kubectl: macOS
- Installation
  - curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/darwin/amd64/kubectl
  - chmod +x ./kubectl
  - sudo mv ./kubectl /usr/local/bin/kubectl
- Latest version install.
  - https://kubernetes.io/docs/tasks/tools/install-kubectl/

## Example minikube commands:
- Start minikube
  - minikube start
- Deploy a sample Kubernetes "deployment" to your local minikube.
  - kubectl run hello-minikube --image=gcr.io/google_containers/echoserver:1.4 --port=8080
- Expose this deployment to an external network.
  - kubectl expose deployment hello-minikube --type=NodePort
- List the "pods" of this deployment.
  - kubectl get pod
- Access the sample service.
  - curl $(minikube service hello-minikube --url)
- Delete the deployment.
  - kubectl delete deployment hello-minikube
- Stop minikube
  - minikube stop

## Test Kubernetes Commands
kubectl apply -f ./deployment.yaml
kubectl expose deployment tomcat-deployment --type=NodePort
minikube service tomcat-deployment --url
curl <URL>


## Container Orchestration
Kubernetes
Docker Swarm
Amazon ECS
Mesos

