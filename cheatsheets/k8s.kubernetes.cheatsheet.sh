#Kubernetes
#	Can run in bear metal or cloud.
#	Amazon EKS
#
#Minikube for locahost developer

#Deployments > jobs > services
#Labels, selectors, and namespaces
#Controllers > Nodes > Pods > containers > docker 

docker --version
kubectl version
minikube version
#virtualbox
vboxmanage --version
minikube version

minikube start
minikube addons list
minikube addons enable heapster
minikube dashboard
kubectl get nodes
kubectl run hw --image=??? --port=80

https://github.com/karthequian/docker-helloworld
kubectl run hw --image=karthequian/helloworld --port=80
kubectl get deployments
kubectl get rs
kubectl get pods

kubectl expose deployment hw --type=NodePort
kubectl get services
##launch the app
minikube service hw
kubectl get all
kubectl get deploy/hw -o yaml
kubectl create -f $$$.yml

kubectl scale --replicas=3 deployment hw

kubectl get pods --show-labels
kubectl label $name key=value --overwrite
kubectl label $name key- ##delete
kubectl get pods --selector key=value
kubectl describe deployment hw
kubectl logs $podname
kubectl exec -it  $podname /bin/bash
kubectl exec -it  $podname -c $containername /bin/bash

kubectl  set image $name $name2
kubectl  rollout history $name2
kubectl  rollout undo $name2