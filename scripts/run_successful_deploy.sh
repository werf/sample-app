#!/bin/bash

source scripts/env.sh

export APP_IMAGE="$(cat /tmp/images.json  | jq -r .Images.app.DockerImageName)"

tmux new-session -d "scripts/_type_and_execute.sh scripts/raw_scenario/successful_deploy_with_werf.sh ; bash" \; \
     split-window -h "scripts/_type_and_execute.sh scripts/raw_scenario/successful_deploy_with_helm.sh ; bash" \; \
     attach
