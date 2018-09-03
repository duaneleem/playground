## Nodes: A worker machine.
- kubelet, kube-proxy, Pods, Docker
- kubelet: Watches/manages pods.
- kube-proxy: Provides access to web application (such as the NodePort).
- Pods: The application.

## Scaling & Replication
### Stateful vs Stateless Applications
- Stateful: Data stored on that single thread.
- Stateless: Has a database and any instance can access that DB.

### Replicas
- Define ReplicaSet in deployment (recommended)
- DaemonSet

### Intro to Replicas
- Declare how many pods you want.
- In deployment.yaml, spec -> replicas: 4
- Updating The Service
  - While a deployment is in prod: kubectl scale --replicas=4 deployment/tomcat-deployment
  - Defined NordPort for Tomcat pod: kubectl expose deployment tomcat-deployment --type=NodePort
  -- Define a LoadBalancer service: kubectl expose deployment tomcat-deployment --type=LoadBalancer --port=8080 --target-port=8080 --name tomcat-load-balancer
- Scaling Commands
  - kubectl scale --replicas=4 deployment/tomcat-deployment 
  - kubectl expose deployment tomcat-deployment --type=NodePort
  - kubectl expose deployment tomcat-deployment --type=LoadBalancer --port=8080 --target-port=8080 --name tomcat-load-balancer
  - kubectl describe services tomcat-load-balancer

### Deploying to Kubernetes
- Ability to apply rolling updates to Pods running in my cluster.
- Rollback to previous version.
- Pause/Resume a deployment.
- Deployment Commands
  - kubectl get deployments
  - kubectl rollout status
  - kubectl set image
  - kubectl rollout history

### Labels & Selectors
- A method to keep things organized to help identify resources.
- Labels are key/value pairs that you can attach to objects like pods.
- Selectors are a way of expressing how to select objects based on their labels.

### Health Checks
- Kubenetes has two types of health checks:
  - Readiness Probes: Determine when a Pod is "ready"
  - Liveness Probes

### Web Interface
- Called "Dashboard UI"
- Install Web UI
  - Install via bash: kubectl create -f https://raw.githubusercontent.com/kubernetes/dashboard/master/src/deploy/recommended/kubernetes-dashboard.yaml
  - Run: kubectl proxy
  - Access: http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/overview?namespace=default

### Exercise: Deploying & Scaling Kubernetes
- MongoDB port 27017
- Create MongoDB Server
  - kubectl run mongo-exercise-1 --image=mongo --port=27017
  - kubectl scale --replicas=4 deployment/mongo-exercise-1
- Describe Deployment
  - kubectl describe deployments mongo-exercise-1
- Open up port on LoadBalancer
  - kubectl expose deployment mongo-exercise-1 --type=LoadBalancer --name=mongo-exercise-1
- Find out info about the new service.
  - kubectl get services
  - kubectl describe services mongo-exercise-1

Example for exposing IP: https://kubernetes.io/docs/tutorials/stateless-application/expose-external-ip-address/

## Deep Dive into Kubernetes
### DNS & Service Discovery
- Kubernetes has a specific & consistent nomenclature for deciding what this DNS name is: <my-service-name>.<my-namespace>.svc.cluster.local
- Automatic
  - Convention over Configuration
  - 
- Demo Commands
  - kubectl create -f local-volumes.yaml
  - kubectl apply -f mysql-deployment.yaml
  - kubectl apply -f wordpress-deployment.yaml
  - minikube service wordpress --url

### Secrets
- Translating base64 with radix-64
- Creating secrets
  - kubectl create secret generic db-user-pass --from-file=./username.txt --from-file=./password.txt
  - kubectl create secret generic mysql-pass --from-literal=password=PASSWORDS_IN_PLAIN_TEXT_ARE_BAD_WE_WILL_SHOW_SOMETHING_MORE_SECURE_LATER
  - kubectl get secret
- Using secrets
  - As an environmental variable.

### Usage & Resource Monitoring
- Open Source: Heapster, InfluxDB, Grafana
- Heapster
  - Kubernetes' container cluster monitoring solution.
  - Maintained by CNCF
  - Minikube
    - minikube addons enable heapster
    - kubectl get pods --namespace=kube-system
    - Grafana Dashboard: minikube addons open heapster

### Namespaces
- Namespaces create multiple virtual clusters on the same physical clusters, these virtual clusters are called namespaces.
- Namespaces provide separation, when you start to need them, start using them.
- Commands for namespaces
  - kubectl create namespace <namespace name>
  - kubectl get namespace
  - kubectl create namespace cpu-limited-tomcat
  - kubectl create -f ./cpu-limits.yaml —namespace=cpu-limited-tomcat (from the GitHub repo directory for this lecture)
  - kubectl apply -f ./tomcat-deployment.yaml —namespace=cpu-limited-tomcat (from the GitHub repo directory for this lecture)
  - kubectl describe deployment tomcat-deployment —namespace=cpu-limited-tomcat

### Auto-Scaling
- Horizontal pod auto-scaler (HPA).
- Command
  - 1st Terminal
    // since the latest minikube doesn't enable metrics-server by default
    - minikube addons enable metrics-server  
    - kubectl apply -f ./wordpress-deployment.yaml
    - kubectl autoscale deployment wordpress --cpu-percent=50 --min=1 --max=5
  - In the other terminal
    - kubectl run -i --tty load-generator --image=busybox /bin/sh
    - while true; do wget -q -O- http://wordpress.default.svc.cluster.local; done
  - Back to 1st terminal.
    - kubectl get hpa
  
### Auditing
- Legacy Auditing, Advanced Auditing (1.8+)
- Audit Policy
  - Defines what should be logged.
  - Defined in a .yaml file.
- Audit Backend
  - kube-apiserver provides two backends
    - Logs
    - Webhooks

## Kubernetes in Production
### High Availability
