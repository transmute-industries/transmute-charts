

kubectl exec -it $IPFS_POD_NAME /bin/bash ./configure-k8s-ipfs-cors

# MANUAL CORS CONFIGURATION

```
# kubectl exec -it $IPFS_POD_NAME /bin/bash
ipfs config Addresses.API /ip4/0.0.0.0/tcp/5001
ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '["*"]'
ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '["PUT", "GET", "POST"]'
# reboot the pod
kubectl delete pod $IPFS_POD_NAME
```