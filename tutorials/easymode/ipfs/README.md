# IPFS Loadbalancer + Cloudflair

Create 2 loadbalancers for the ipfs gateway and api:

```
kubectl apply -f oracle.ipfs.api.loadbalancer.yml 
kubectl apply -f oracle.ipfs.gateway.loadbalancer.yml
```

Use cloudflare to provide SSL for 2 hosts:

api.example-ipfs.com
example-ipfs.com