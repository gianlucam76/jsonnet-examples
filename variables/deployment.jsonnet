local replicas = std.extVar("replicas");
local deploymentName = std.extVar("deploymentName");
local namespace = std.extVar("namespace");

{
  apiVersion: 'apps/v1',
  kind: 'Deployment',
  metadata: {
    name: deploymentName,
    labels: {
      app: deploymentName
    },
    namespace: namespace
  },
  spec: {
    replicas: replicas,
    selector: {
      matchLabels: {
        app: deploymentName
      }
    },
    template: {
      metadata: {
        labels: {
          app: deploymentName
        }
      },
      spec: {
        containers: [
          {
            name: 'my-container',
            image: 'nginx:latest',
            ports: [
              {
                containerPort: 80
              }
            ]
          }
        ]
      }
    }
  }
}
