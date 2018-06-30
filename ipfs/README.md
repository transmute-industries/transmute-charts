
## IPFS

```
helm install --name dapp-storage transmute-charts/ipfs   

VOYAGER_IPFS=$(minikube service --url voyager-dapp-storage-ingress )

curl -s -k -X GET \
  --url $VOYAGER_IPFS/api/v0/id \
  | jq -r '.'

```