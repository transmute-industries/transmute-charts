
## IPFS

```
helm install --name dapp-storage transmute-charts/ipfs   


curl -s -k -X GET \
  --url $(minikube service --url voyager-dapp-storage-ingress )/api/v0/id \
  | jq -r '.'

```