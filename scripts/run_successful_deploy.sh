#!/bin/bash

tmux new-session -d 'werf converge --repo k3d-registry.sample-app.test:5000/sample-app ; sleep 5' \; split-window -h 'helm upgrade --wait --install --create-namespace --namespace sample-app sample-app .helm/ --set werf.image.app=k3d-registry.sample-app.test:5000/example-2:ab7d6f19fe0c04d5b07b416d1e0c415cc8e381ba7b23c11968b42df2-1681808706889 ; sleep 5' \; attach
