### configure microservices with voyager-ingress for test environment

```

curl -fsSL https://raw.githubusercontent.com/appscode/voyager/7.2.0/hack/deploy/voyager.sh | bash -s -- --provider=minikube


helm install --name ethereum-testnet transmute-charts/ganache 
helm install --name ethereum-testnet ./ganache  

VOYAGER_IPFS=$(minikube service --url voyager-ethereum-testnet-ingress )

curl -s -k -X POST \
  --url $VOYAGER_IPFS \
  --data '{"jsonrpc":"2.0","method":"web3_clientVersion","params":[],"id":68}' \
  | jq -r '.'

```

See https://github.com/OR13/travis-minikube/blob/master/minikube-voyager-kong-ipfs/setup