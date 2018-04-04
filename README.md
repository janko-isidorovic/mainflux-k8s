# mainflux-k8s - WIP
#Setup Mainflux on Kubernetes
Scripts to deploy Mainflux on the kubernetes. Work in progress. Not ready for deployment.

## Setps

###1. Setup PosgreSQL 
- Create Persistent Volume for PosgreSQL to store data to.
```bash 
kubectl create -f 1-mainflux-postgres-persistence.yml
```
- Claim Persistent Volume
```bash
kubectl create -f 2-mainflux-postgres-claim.yml
```
- Create PosgreSQL Pod
```bash
kubectl create -f 3-mainflux-postgres-pod.yml
```
- Create PosgreSQL Service
```bash
kubectl create -f 4-mainflux-postgres-service.yml
```

###2. Setup NATS
- Change `nats.conf` according to your needs.
Create a Kubernetes configmap to store it:
```bash
kubectl create configmap nats-config --from-file nats.conf
```
- Deploy NATS:
```bash
kubectl create -f nats.yml
```


