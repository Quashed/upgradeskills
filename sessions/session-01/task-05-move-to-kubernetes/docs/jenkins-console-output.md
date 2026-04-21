# Task 5 – Pipeline Proof

## Jenkins console output (filtered)

```text
Started by user admin

[Pipeline] Start of Pipeline
Created Pod: Kubernetes default/task-05-62-75vhx-9m2z2-pt9r1
Agent task-05-62-75vhx-9m2z2-pt9r1 is provisioned from template task-05_62-75vhx-9m2z2
---
---
apiVersion: "v1"
kind: "Pod"
metadata:
  annotations:
    kubernetes.jenkins.io/last-refresh: "1776769121611"
    buildUrl: "http://jenkins-controller:8080/job/task-05/62/"
    runUrl: "job/task-05/62/"
  labels:
    jenkins: "slave"
    jenkins/label-digest: "930ebd7590c2f6519cb6124a7a10d95b7052d717"
    jenkins/label: "task-05_62-75vhx"
    kubernetes.jenkins.io/controller: "http___jenkins-controller_8080x"
  name: "task-05-62-75vhx-9m2z2-pt9r1"
spec:
  containers:
  - env:
    - name: "JENKINS_SECRET"
      value: "********"
    - name: "JENKINS_TUNNEL"
      value: "jenkins-controller:50000"
    - name: "JENKINS_AGENT_NAME"
      value: "task-05-62-75vhx-9m2z2-pt9r1"
    - name: "REMOTING_OPTS"
      value: "-noReconnectAfter 1d"
    - name: "JENKINS_NAME"
      value: "task-05-62-75vhx-9m2z2-pt9r1"
    - name: "JENKINS_AGENT_WORKDIR"
      value: "/home/jenkins/agent"
    - name: "JENKINS_URL"
      value: "http://jenkins-controller:8080/"
    image: "jenkins/inbound-agent:alpine"
    name: "jnlp"
    resources:
      requests:
        memory: "256Mi"
        cpu: "100m"
    volumeMounts:
    - mountPath: "/home/jenkins/agent"
      name: "workspace-volume"
      readOnly: false
  - args:
    - "infinity"
    command:
    - "sleep"
    image: "maven:3.9.6-eclipse-temurin-21-alpine"
    name: "maven"
    volumeMounts:
    - mountPath: "/home/jenkins/agent"
      name: "workspace-volume"
      readOnly: false
  - args:
    - "infinity"
    command:
    - "sleep"
    image: "node:20-alpine"
    name: "node"
    volumeMounts:
    - mountPath: "/home/jenkins/agent"
      name: "workspace-volume"
      readOnly: false
  nodeSelector:
    kubernetes.io/os: "linux"
  restartPolicy: "Never"
  volumes:
  - emptyDir:
      medium: ""
    name: "workspace-volume"

Running on task-05-62-75vhx-9m2z2-pt9r1 in /home/jenkins/agent/workspace/task-05

[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  13.279 s
[INFO] Finished at: 2026-04-21T09:03:44Z
[INFO] ------------------------------------------------------------------------

hello (200 ) - 109 ms
Tests
   ✓ Status is 200
   ✓ Response contains expected message

📊 Execution Summary
┌───────────────┬──────────────┐
│ Metric        │    Result    │
├───────────────┼──────────────┤
│ Status        │    ✓ PASS    │
├───────────────┼──────────────┤
│ Requests      │ 1 (1 Passed) │
├───────────────┼──────────────┤
│ Tests         │     2/2      │
├───────────────┼──────────────┤
│ Assertions    │     0/0      │
├───────────────┼──────────────┤
│ Duration (ms) │     373      │
└───────────────┴──────────────┘

Finished: SUCCESS
```