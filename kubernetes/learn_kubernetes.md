# Learn Kubernetes

TODO: Write up notes on learning kubernetes

This guide will in first round be focused on **Minikube**

## Installing Minikube

[The official guide for installing Minikube][minikubeinstall]

```
$ brew install minikube
```

`minikube` is not available in `$PATH` automatically.

Issue with the above symbolic link is that we are not pointing to a canonical path and executable, so updates will not match our symbolic link :-/

## Starting/Running Minikube

$ minikube start

```bash
$ minikube status
host: Running
kubelet: Running
apiserver: Running
kubeconfig: Configured
```

## Stopping Minikube

$ minikube start

## References

- [Kubernetes.io](https://kubernetes.io)
- [Kubernetes.io: Tutorials](https://kubernetes.io/docs/tutorials/)
- [Kubernetes.io: Minikube](https://kubernetes.io/docs/tutorials/hello-minikube/)
- [Kubernetes.io: Installing Minikube][minikubeinstall]
- [Kubernetes.io: Learning Minikube](https://kubernetes.io/docs/setup/learning-environment/minikube/)

[minikubeinstall]: https://kubernetes.io/docs/tasks/tools/install-minikube/
