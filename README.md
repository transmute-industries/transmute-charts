# Transmute Hybrid Infrastructure Charts

[![Build Status](https://travis-ci.org/transmute-industries/transmute-charts.svg?branch=master)](https://travis-ci.org/transmute-industries/transmute-charts)

[Github](https://github.com/transmute-industries/transmute-charts)

Helm repository hosted using github-pages to simplify installation and dependency management of my charts.

```
$ helm repo add transmute-charts http://charts.transmute.network
$ helm search | grep transmute
$ helm repo remove transmute-charts
```

### ganache

```
helm install --name ethereum-testnet transmute-charts/ganache
```

## Development

```
npm run helm:package
npm run helm:index
```

# Current content:

- Ganache

### Thanks

- https://hackernoon.com/using-a-private-github-repo-as-helm-chart-repo-https-access-95629b2af27c
- https://github.com/lwolf/kube-charts
