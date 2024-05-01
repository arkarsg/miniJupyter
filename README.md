# JupyterHub Deployment

On MiniKube, using `jupyterhub-helm-charts`

# Getting started

1. Create a local Kubernetes cluster with Minikube

```
minikube start \
--kubernetes-version stable \
--nodes 2 \
--cpus 2 \
--memory 2000 \
--cni calico
```

Check that the nodes have started:

```
kubectl get node
```

2. In a new terminal,

```
minikube dashboard
```

2. Check `helm` version:

```
helm version
```

3. Run `build.sh` file

4. Ensure all pods' status is `RUNNING`

```
kubectl --namespace=jh get pod
```

5. In a new terminal, run

```
minikube tunnel
```

5. Discover the localhost URL to access JupyterHub

```
kubectl --namespace jh get service proxy-public
```

6. Access JupyterHub with `EXTERNAL-IP` in your browser

---

# Creating Docker images

1. Use the `minimal-notebook` image

```
docker pull quay.io/jupyter/minimal-notebook:lab-4.1.8
```

2. Update the image layers in the `Dockerfile`

3. `docker build -t nb-test .`

4. Push to Docker repository
