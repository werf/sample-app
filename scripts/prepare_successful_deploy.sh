#!/bin/bash

source scripts/env.sh

werf build --repo k3d-registry.sample-app.test:5000/sample-app --report-path=/tmp/images.json
kubectl delete ns --ignore-not-found sample-app sample-app-2
