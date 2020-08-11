Write-Host "deleteting all simpleapp microservices" -ForegroundColor White
kubectl delete -f simpleweb-configmap.yaml --namespace simpleapp
kubectl delete -f simpleweb-deployment.yaml --namespace simpleapp
kubectl delete -f simpleweb-loadbalancer.yaml --namespace simpleapp

kubectl delete -f simpleapi-deployment.yaml --namespace simpleapp
kubectl delete -f simpleapi-cluster.yaml --namespace simpleapp
Write-Host "The list of k8s objects running locally is:" -ForegroundColor Yellow
kubectl get all --namespace simpleapp