# Kubernetes Pod Evidence

---

## Before build

```text
NAME                 READY   STATUS    RESTARTS   AGE
jenkins-controller   1/1     Running   0          22h
```

---

## During build (pods running)

```text
NAME                           READY   STATUS    RESTARTS   AGE
jenkins-controller             1/1     Running   0          22h
task-05-55-w5dwb-smsf2-jl773   3/3     Running   0          15s
task-05-56-xgjzh-7r1fc-p1h3b   3/3     Running   0          13s
task-05-57-w0flj-fbc0j-txv7t   3/3     Running   0          13s
```

---

## After build (pods terminating)

```text
NAME                           READY   STATUS        RESTARTS   AGE  
jenkins-controller             1/1     Running       0          22h  
task-05-55-w5dwb-smsf2-jl773   3/3     Terminating   0          2m18s
task-05-56-xgjzh-7r1fc-p1h3b   3/3     Terminating   0          2m16s
task-05-57-w0flj-fbc0j-txv7t   3/3     Terminating   0          2m16s
```
---

## Final state (after cleanup)

```text
NAME                 READY   STATUS    RESTARTS   AGE
jenkins-controller   1/1     Running   0          22h
```

---