local deployment(namespace) = {
  "apiVersion": "apps/v1",
  "kind": "Deployment",
  "metadata": {
    "name": "my-deployment",
    "namespace": namespace
  },
  "spec": {
    "replicas": 3,
    "selector": {
      "matchLabels": {
        "app": "my-app"
      }
    },
    "template": {
      "metadata": {
        "labels": {
          "app": "my-app"
        }
      },
      "spec": {
        "containers": [
          {
            "name": "my-container",
            "image": "my-image:latest",
            "ports": [
              {
                "containerPort": 8080
              }
            ]
          }
        ]
      }
    }
  }
};

deployment
