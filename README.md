# `teleport-machineid-k8s-demo`

An example application and its production ready CI/CD that uses:

- A application written in Go
- Docker to build a container image
- Kubernetes for orchestrating containers
- GitHub Actions for CI/CD
- Teleport within GH Actions for accessing the Kubernetes cluster.

What value Teleport adds:

- No secrets stored in GH Actions for accessing the cluster - therefore, less risk of exfilitration of powerful secrets.
- Complete auditing of GH Actions actions against the cluster.
