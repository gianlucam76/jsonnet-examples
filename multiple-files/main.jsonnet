local namespace = std.extVar("namespace");

local deployment = (import 'deployment.jsonnet')(namespace);
local service = (import 'service.jsonnet')(namespace);

[
  deployment,
  service
]

