# Kubernetes Setup


## Pre-requisites

Install kind https://kind.sigs.k8s.io/docs/user/quick-start/#installing-from-release-binaries

Install tilt https://docs.tilt.dev/install.html

Install linkerd https://linkerd.io/2.10/getting-started/

## Local development

Start a local k8s cluster using kind with a local registry
```
./scripts/kind-local-registry.sh
```

Start tilt
```
tilt up
```

Start linkerd dashboard
```
linkerd viz dashboard
```

