## Ganache

```
helm install --name ethereum-testnet transmute-charts/ganache 
helm install --name ethereum-testnet ./ganache  

kubectl logs $GANACHE_POD_NAME

curl -s -k -X POST \
  --url http://192.168.99.100:32421 \
  --data '{"jsonrpc":"2.0","method":"web3_clientVersion","params":[],"id":68}' \


```

