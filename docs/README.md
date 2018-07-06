#### Helm Charts for Hybrid Infrastructure

[![Build Status](https://travis-ci.org/transmute-industries/transmute-charts.svg?branch=master)](https://travis-ci.org/transmute-industries/transmute-charts)

[Transmute Charts Github Repository](https://github.com/transmute-industries/transmute-charts)

Helm repository hosted using github-pages to simplify installation and dependency management of charts. Currently ingress must be configured seperately.

```
$ helm repo add transmute-charts https://charts.transmute.network
$ helm search | grep transmute
$ helm repo remove transmute-charts
```

### ganache

```
helm install --name ethereum-testnet transmute-charts/ganache
```

### ipfs

```
helm install --name ethereum-testnet transmute-charts/ipfs
```

## Development

Update the repo (docs directory)

```
npm run helm:repo:update
```

### References

- [Github Private Helm Chart Repo](https://hackernoon.com/using-a-private-github-repo-as-helm-chart-repo-https-access-95629b2af27c)
- [Similar Helm Repo Example](https://github.com/lwolf/kube-charts)
