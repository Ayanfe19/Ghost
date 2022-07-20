# Ghost

![Ghost](https://ron.sh/content/images/size/w2000/2021/05/ghost-logo-dark.png)

[Ghost](https://ghost.org) is a popular blogging engine with a clean interface written in JavaScript. It can either use a file-based SQLite database or MySQL for storage.

### .


### Create a ConfigMap Object
```
kubectl create cm --from-file ghost-config.js ghost-config
```

### Create the Ghost Deployment object
```
kubectl apply -f ghost.yaml
```

### Expose the deployment as a service
```
kubectl expose deployments ghost --port=2368
```

### Use kubectl proxy to access the Ghost server
```
kubectl proxy
```


#### See the deployment
Visit http://localhost:8001/api/v1/namespaces/default/services/ghost/proxy/ on your browser.






