#!/bin/bash

tmux new-session  -d "source scripts/env.sh ; INPUT_THROTTLING=18 APP_IMAGE=$(cat /tmp/images.json | jq -r .Images.app.DockerImageName) source scripts/_type_and_execute.sh scripts/raw_scenario/successful_deploy_with_helm.sh ${APP_IMAGE} ; bash" \; \
     split-window -h -l 65% "source scripts/env.sh ; WERF_LOG_TERMINAL_WIDTH=90 WERF_REQUIRE_BUILT_IMAGES=1 INPUT_THROTTLING=11 source scripts/_type_and_execute.sh scripts/raw_scenario/successful_deploy_with_werf.sh ; bash" \; \
     attach
