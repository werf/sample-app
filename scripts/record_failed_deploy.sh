#!/bin/bash

./scripts/prepare_failed_deploy.sh
./scripts/_record.sh --command ./scripts/run_failed_deploy.sh assets/failed_deploy.cast --overwrite
