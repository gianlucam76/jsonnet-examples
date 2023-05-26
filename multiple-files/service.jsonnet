local service(namespace) = {
  "apiVersion": "v1",
  "kind": "Service",
  "metadata": {
    "name": "my-service",
    "namespace": namespace
  },
  "spec": {
    "selector": {
      "app": "my-app"
    },
    "ports": [
      {
        "protocol": "TCP",
        "port": 80,
        "targetPort": 8080
      }
    ],
    "type": "LoadBalancer"
  }
};

service
