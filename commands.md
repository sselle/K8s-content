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

### Update a K8s object > get YAML file, change it and send it back to the API
    kubectl edit <resource> <object>

### Forward port from local machine to pod (for temporary testing)
    kubectl port-forward <pod-name> <local port>:<port in pod>

### Run local proxy into cluster
    kubectl proxy

### Get logs from pod (and previously run container)
    kubectl logs <pod-name>
    kubectl logs <pod-name> --previous

### Get endpoints for services
    kubectl get endpoints <svc-name> -w

### Get ingress overview
    kubectl get ingress

### Imperative scale of replicaset
    kubectl scale rs <rs-name> --replicas=3

### Get autoscaler settings
    kubectl get hpa

### Delete replica set, but keep the pods
    kubectl delete rs <rs-name> --cascade=false

### Save deployment in YAML file
    kubectl get deployment <deplyoment-name> --export -o yaml > FILE.yaml

### Get rollout status
    kubectl get rollout status deployment <deply-name>

### Get rollout history
    kubectl rollout history deployment kuard

### Get information on specific rollout revision
    kubectl rollout history deployment kuard --revision=2

### Rollback
    kubectl rollout undo deployments kuard

### Label nodes in the cluster
    kubectl label nodes <name-node> <label>=<value>

### Get Nodes with Label
    kubectl get nodes --selector <label>=<value>

### Delete multiple elements based on label
    kubectl delete rs,svc,job -l <label>=<value>

### Create a config map 
    kubectl create configmap <configmap-name> --from-file=FILE.txt

### Create secret
    kubectl create secret generic <secret-name> --from-file=FILE.txt