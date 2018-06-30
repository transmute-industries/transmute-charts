## Ganache

```
helm install --name ethereum-testnet transmute-charts/ganache 
helm install --name ethereum-testnet ./ganache  

VOYAGER_IPFS=$(minikube service --url voyager-ethereum-testnet-ingress )

curl -s -k -X POST \
  --url $VOYAGER_IPFS \
  --data '{"jsonrpc":"2.0","method":"web3_clientVersion","params":[],"id":68}' \
  | jq -r '.'

```