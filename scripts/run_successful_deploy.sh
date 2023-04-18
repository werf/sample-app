#!/bin/bash

source scripts/env.sh

werf build --repo k3d-registry.sample-app.test:5000/sample-app --report-path=/tmp/images.json
export APP_IMAGE="$(cat /tmp/images.json  | jq -r .Images.app.DockerImageName)"

tmux new-session -d "werf converge --repo k3d-registry.sample-app.test:5000/sample-app ; bash" \; split-window -h "helm upgrade --wait --install --create-namespace --namespace sample-app sample-app .helm/ --set werf.image.app=${APP_IMAGE} ; bash" \; attach
