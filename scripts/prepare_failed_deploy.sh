#!/bin/bash

source scripts/env.sh

kubectl delete ns --ignore-not-found sample-app sample-app-2

werf converge --repo k3d-registry.sample-app.test:5000/sample-app --save-report-path=/tmp/images.json

APP_IMAGE=$(cat /tmp/images.json | jq -r .Images.app.DockerImageName)

helm upgrade --wait --install --create-namespace --namespace sample-app-2 sample-app .helm/ --set werf.image.app=${APP_IMAGE} --set host=sample-app-2.test --timeout 60s
