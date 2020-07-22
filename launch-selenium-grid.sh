#!/bin.bash

namespace="selenium-grid"

response=$(kubectl get ns $namespace)
if [ -z "$response" ]; then
  kubectl apply -f grid-namespace.yml
fi

helm upgrade sel-grid stable/selenium -i -f values.yaml -n selenium-grid