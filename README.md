# Simple Kubernetes controller 

A simple controller that exposes your Kubernetes deployment automatically to external world.  Please find youtube series . 

[Writing a Kubernetes custom controller](https://www.youtube.com/watch?v=lzoWSfvE2yA&list=PLh4KH3LtJvRQ43JAwwjvTnsVOMp0WKnJO&index=1&t=224s)

## Installation

kubectl create a namespace `ekpose`

```bash
kubectl create ns ekspose
```

## install using `manifests` folder 

```python
kubectl apply -f manifests/
clusterrole.rbac.authorization.k8s.io/ekspose-cr created
clusterrolebinding.rbac.authorization.k8s.io/ekspose-crb created
deployment.apps/ekspose created
serviceaccount/ekspose-sa created
```

## status Checking .
1- create a deployment .
```bash 
kubectl create deployment test-ekpose --image=nginx
deployment.apps/test-ekpose created
```
2- check if ing is created or no .
```sh
 kubectl get ing
NAME          CLASS    HOSTS   ADDRESS                                             PORTS   AGE
test-ekpose   <none>   *       c04c862c-306f-48d0-84c0-54a80730d855.k8s.civo.com   80      44s
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)