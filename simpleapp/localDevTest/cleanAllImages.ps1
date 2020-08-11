  
docker image rm $(docker image ls "simple*" -qa) -f
docker image prune