## Task 5 — Move to Kubernetes (Docker → K8s)

**Minimum setup:**

- **Jenkins Controller Pod (1 pod):** Runs Jenkins UI, always active
- **Jenkins Agent Pods (dynamic):**
    - Created per pipeline run
    - Executes checkout → build → test → Bruno
    - Deleted after completion