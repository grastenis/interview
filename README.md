# Overview

## Dependencies

This has been tested on OSX. Make sure you have this software installed 

- Docker installed
- Brew installed

Additional dependencies like kubectl(https://kubernetes.io/docs/tasks/tools/install-kubectl/) and kind(https://kind.sigs.k8s.io/) are installed
by running 
```
./sre/setup.sh
```

## Bootstrapping cluster

```
./sre/start_cluster.sh
```

## Task

We have a set of problematic deployments(in sre/manifests/tasks/) you need to fix.

 - Fork https://github.com/grastenis/interview repository and clone it
 - Bootstrapping cluster by running ./sre/start_cluster.sh
 - Check you got problematic deployments by running kubectl get pods
 - Fix problematic deployment or add required implementation details
 - Make a commit for a fix
 - Verify your fix by running command kubectl port-forward svc/httpbin-issue-<issue number> 8000:8000
 - Open browser and access http://localhost:8000/ and if you managed to fix issue you will see httpbin page

We got in total six problematic deployments to fix. And some extra tasks

- Task1: Fix 1st issue sre/manifests/tasks/httpbin_issue_1.yaml
- Task2: Fix 2nd issue sre/manifests/tasks/httpbin_issue_2.yaml
- Task3: Fix 3rd issue sre/manifests/tasks/httpbin_issue_3.yaml
- Task4: Fix 4th issue sre/manifests/tasks/httpbin_issue_4.yaml
- Task5: Fix 5th issue sre/manifests/tasks/httpbin_issue_5.yaml
- Task6: Fix 6th issue sre/manifests/tasks/httpbin_issue_6.yaml
- Task7: Setup SSL access for httpbin, you can find sample ingress config for http sre/manifests/tasks/httpbin_issue_7.yaml
- Task8: Setup flux and configure httpbin to be deployed via gitops


## Kubernetes intro

Kubernetes is a portable, extensible open-source platform for managing containerized workloads and services, that facilitates both declarative configuration and automation. It has a large, rapidly growing ecosystem. Kubernetes services, support, and tools are widely available.

Google open-sourced the Kubernetes project in 2014. Kubernetes builds upon a decade and a half of experience that Google has with running production workloads at scale, combined with best-of-breed ideas and practices from the community.

Have a look here for more details https://kubernetes.io/docs/concepts/overview/what-is-kubernetes/


 
