### Chose context
    kubectl config set-context my-context --namespace=my-namespace
    kubectl config use-context my-context

### Start bash in pod
    kubectl exec -it <pod-name> /bin/ash

### Get detailed info on pod
    kubectl get pods <pod-name> -o yaml

### Attach to pod that doesn't have a terminal
    kubectl attach -it <pod-name>

### Copy into / out of pod
    kubectl cp <pod-name>:/path/to/file /path/to/local/file

### Update a K8s object > get YAML file
    kubectl eidt <resource> <object>

### Forward port from local machine to pod (for temporary testing)
    kubectl port-forward <pod-name> <local port>:<port in pod>

### Run local proxy into cluster
    kubectl proxy

### Get logs from pod (and previously run container)
    kubectl logs <pod-name>
    kubectl logs <pod-name> --previous

### Get endpoints for services
    kubectl get endpoints <svc-name> -w