#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

dist="$1"

PUSH_IMAGE="superandroidanalyzer/$dist"

# Login on Docker Hub when executing on CI
# Redefine long_timeout on CI
if [[ ! -z "${CI+x}" ]]; then
    echo "${DOCKER_PASSWORD}" | base64 --decode | docker login --username "${DOCKER_USERNAME}" --password-stdin

    disable-no-output-timeout() {
        while true; do
            sleep 60
            echo "[disable no-output timeout]"
        done
    }
else
    disable-no-output-timeout() {
        true
    }
fi

disable-no-output-timeout &

cd ./$dist &&
docker build -t "${PUSH_IMAGE}" . &&
docker push "${PUSH_IMAGE}"