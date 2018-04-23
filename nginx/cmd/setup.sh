kubectl delete namespace ingress-nginx
sleep 20
kubectl apply -f ../namespace.yaml
sleep 3
kubectl apply -f ../default-backend.yaml
sleep 3
kubectl apply -f ../nginx-ingress-controller.yaml
sleep 3
kubectl apply -f ../load-balancer.yaml
sleep 10
kubectl get svc --namespace=ingress-nginx
