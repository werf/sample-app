#!/bin/bash

source scripts/env.sh
export WERF_DEV=1

tmux new-session -d "INPUT_THROTTLING=11 source scripts/_type_and_execute.sh scripts/raw_scenario/failed_deploy_with_werf.sh ; bash" \: \
     split-window -h "INPUT_THROTTLING=18 APP_IMAGE=$(cat /tmp/images.json | jq -r .Images.app.DockerImageName) source scripts/_type_and_execute.sh scripts/raw_scenario/failed_deploy_with_helm.sh ${APP_IMAGE} ; bash" \; \
     attach
