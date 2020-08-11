Write-Host "starting all simpleapp microservices" -ForegroundColor White
kubectl apply -f simpleweb-configmap.yaml --namespace simpleapp
kubectl apply -f simpleweb-deployment.yaml --namespace simpleapp
kubectl apply -f simpleweb-loadbalancer.yaml --namespace simpleapp

kubectl apply -f simpleapi-deployment.yaml --namespace simpleapp
kubectl apply -f simpleapi-cluster.yaml --namespace simpleapp
Write-Host "The list of k8s objects running locally is:" -ForegroundColor Yellow
kubectl get all --namespace simpleapp