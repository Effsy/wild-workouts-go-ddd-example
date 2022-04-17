# Kubernetes Setup


## Pre-requisites


Install tilt

https://docs.tilt.dev/install.html

Install ctlptl

[ctlptl installation](https://github.com/tilt-dev/ctlptl)

## Local development


Start a local k8s cluster using kind with a local registry. This uses ctlptl instead of kind

kubectl port-forward deployment/web 3000:30100






```
./scripts/kind-local-registry.sh
```



```
ctlptl create registry ctlptl-registry --port=5005
ctlptl create cluster kind --registry=ctlptl-registry
```


Start tilt

```
tilt up


```


Remove cluster
```
kind delete cluster
```



No longer required:
```
./kubernetes/build-docker.sh

```

## Alternative Local Development Setup

[Kind installation](https://kind.sigs.k8s.io/docs/user/quick-start#installation)

```
kind create cluster
```


