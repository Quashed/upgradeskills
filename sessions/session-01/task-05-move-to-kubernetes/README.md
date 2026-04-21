# Task 05: Move to Kubernetes (Docker → K8s)

## Description

Minimum setup includes two types of pods:

### Jenkins Controller Pod (1 pod)
- Runs Jenkins UI and manages jobs.
- Always running.

### Jenkins Agent Pods (dynamic, 1 per build)
- Created when a pipeline runs.
- Executes: checkout → build → test → Bruno.
- Deleted after job completion.

## Approach
- Deployed Jenkins controller in Kubernetes using a Deployment.
- Exposed the controller via a Service.
- Configured the Jenkins Kubernetes plugin to connect to the cluster.
- Granted RBAC permissions for Jenkins to manage agent pods.
- Executed pipelines that spin up agent pods to run: checkout → build → test → Bruno.
- Verified agent pods are created per build and auto-deleted after pipeline runs.