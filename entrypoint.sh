#!/bin/bash
set -e

exec dockerd-entrypoint.sh &
echo Docker Engine started

exec gitlab-ci-multi-runner run
