#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

dist="$1"

cd ./$dist &&
docker build .