### configure microservices with kong-ingress for test environment

```
# install kong
curl https://raw.githubusercontent.com/Kong/kubernetes-ingress-controller/master/deploy/single/all-in-one-postgres.yaml \
  | kubectl create -f -

# remove kong ingress
curl https://raw.githubusercontent.com/Kong/kubernetes-ingress-controller/master/deploy/single/all-in-one-postgres.yaml \
  | kubectl delete -f -

```

### install ganache
```
helm install --name ethereum-testnet ./ganache  
```

ingress is preconfigured with host... (needs to be fixed...)

```
KONG_PROXY=$(minikube service --namespace kong --url kong-proxy | sed -n '1p')
curl -s -k -X POST \
  --url $KONG_PROXY \
  -H 'Host: ganache.transmute.minikube' \
  --data '{"jsonrpc":"2.0","method":"web3_clientVersion","params":[],"id":68}'
```