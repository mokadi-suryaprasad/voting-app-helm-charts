# 🗳️ Voting App - Helm Deployment

This repository contains Helm charts for deploying the **Voting App** microservices on a Kubernetes cluster. The application includes the following components:

- `vote` – frontend voting service
- `result` – results display service
- `worker` – background job processor
- `redis` – in-memory store for vote storage
- `postgres` – database for result storage

---

## 🧭 Architecture Overview

```text
Client browser
     |
     |  (1) DNS resolves vote.suryadev.shop or result.suryadev.shop
     |
     v
Ingress Controller (NGINX)
     |
     |  (2) Routes based on Ingress rules
     |
     v
Vote/Result Service (ClusterIP)
     |
     |  (3) Sends to appropriate Pod
     |
     v
Vote/Result Pod (Container)
