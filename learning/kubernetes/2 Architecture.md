## Nodes: A worker machine.
- kubelet, kube-proxy, Pods, Docker
- kubelet: Watches/manages pods.
- kube-proxy: Provides access to web application (such as the NodePort).
- Pods: The application.

## Scaling & Replication
- Stateful vs Stateless Applications
  - Stateful: Data stored on that single thread.
  - Stateless: Has a database and any instance can access that DB.
- Replicas
  - Define ReplicaSet in deployment (recommended)
  - DaemonSet
- Intro to Replicas
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

