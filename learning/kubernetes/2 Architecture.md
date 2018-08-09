## Nodes: A worker machine.
- kubelet, kube-proxy, Pods, Docker
- kubelet: Watches/manages pods.
- kube-proxy: Provides access to web application (such as the NodePort).
- Pods: The application.

## Scaling & Replication
- Stateful vs Stateless Applications
  - Stateful: Data stored on that single thread.
  - Stateless: Has a database and any instance can access that DB.
  