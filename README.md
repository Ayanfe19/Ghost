# Ghost

![Ghost](https://www.google.com/imgres?imgurl=https%3A%2F%2Fghost.org%2Fimages%2Flogos%2Fghost-logo-dark.png&imgrefurl=https%3A%2F%2Fghost.org%2Fdocs%2Flogos%2F&tbnid=3fhR3MMhOah3rM&vet=12ahUKEwih29iltIX5AhXrKjQIHYzwBrwQMygAegUIARCKAQ..i&docid=D_c40Ci9l7KJKM&w=800&h=294&q=ghost.org&ved=2ahUKEwih29iltIX5AhXrKjQIHYzwBrwQMygAegUIARCKAQ)

[Ghost](ghost.org) is a popular blogging engine with a clean interface written in JavaScript. It can either use a file-based SQLite database or MySQL for storage.

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


# Visit 
# http://localhost:8001/api/v1/namespaces/default/services/ghost/proxy/ 
# on your browser




