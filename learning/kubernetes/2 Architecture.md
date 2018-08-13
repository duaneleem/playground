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