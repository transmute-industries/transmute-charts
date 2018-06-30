# Transmute Hybrid Infrastructure Charts

[Github](https://github.com/transmute-industries/transmute-charts)

Helm repository hosted using github-pages to simplify installation and dependency management of my charts.

```
$ helm repo add transmute-charts http://charts.transmute.network
$ helm search | grep transmute
$ helm repo remove transmute-charts
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
