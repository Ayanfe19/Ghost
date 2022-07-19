# Create a ConfigMap Object
kubectl create cm --from-file ghost-config.js ghost-config

# Create the Ghost Deployment object
kubectl apply -f ghost.yaml

# Expose the deployment as a service
kubectl expose deployments ghost --port=2368

# Use kubectl proxy to access the Ghost server
kubectl proxy


# Visit 
# http://localhost:8001/api/v1/namespaces/default/services/ghost/proxy/ 
# on your browser



