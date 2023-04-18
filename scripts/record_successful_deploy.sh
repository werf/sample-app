#!/bin/bash

./scripts/prepare_successful_deploy.sh
./scripts/_record.sh --command ./scripts/run_successful_deploy.sh assets/successful_deploy.cast --overwrite
