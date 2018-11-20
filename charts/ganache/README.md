## Ganache

```
helm install --name ethereum-testnet transmute-charts/ganache 
helm install --name ethereum-testnet ./ganache  

kubectl logs $GANACHE_POD_NAME

curl -s -k -X POST \
  --url http://localhost:8545 \
  --data '{"jsonrpc":"2.0","method":"web3_clientVersion","params":[],"id":68}' \


```

