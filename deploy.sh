# docker build -t theuncleshege/multi-docker-client -t theuncleshege/multi-docker-client:$SHA ./client
# docker build -t theuncleshege/multi-docker-api -t theuncleshege/multi-docker-api:$SHA ./api
# docker build -t theuncleshege/multi-docker-worker -t theuncleshege/multi-docker-worker:$SHA ./worker

# docker push theuncleshege/multi-docker-client
# docker push theuncleshege/multi-docker-api
# docker push theuncleshege/multi-docker-worker

# docker push theuncleshege/multi-docker-client:$SHA
# docker push theuncleshege/multi-docker-api:$SHA
# docker push theuncleshege/multi-docker-worker:$SHA

kubectl apply -f k8s

kubectl set image deployment/client-deployment client=theuncleshege/multi-docker-client:$SHA
kubectl set image deployment/api-deployment client=theuncleshege/multi-docker-api:$SHA
kubectl set image deployment/worker-deployment client=theuncleshege/multi-docker-worker:$SHA


# Other Userful Commands
# kubectl set image deployment/client-deployment client=theuncleshege/multi-docker-client
# kubectl create secret generic pgpassword --from-literal PGPASSWORD=postgres_password
# kubectl create serviceaccount --namespace kube-system tiller
# kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
# helm init --service-account tiller --upgrade