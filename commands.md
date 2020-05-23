### chose context
kubectl config set-context my-context --namespace=my-namespace
kubectl config use-context my-context

### start bash in pod
kubectl exec -it <pod-name> /bin/ash

### get detailed info on pod
kubectl get pods <pod-name> -o yaml

### attach to pod that doesn't have a terminal
kubectl attach -it <pod-name>

### copy into / out of pod
kubectl cp <pod-name>:/path/to/file /path/to/local/file

### update a K8s object > get YAML file
kubectl eidt <resource> <object>

### forward ports to pod (for temporary testing)
kubectl port-forward <pod-name> <outside port>:<port in pod>

### run local proxy into cluster
kubectl proxy