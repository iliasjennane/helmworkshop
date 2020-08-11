  
Write-Host "Stopping and removing all simpleapp running containers" -ForegroundColor Yellow

docker stop $(docker ps -f "name=simple*" -qa)
docker rm $(docker ps -a -q)