#!/bin/bash

# Read here: https://coderwall.com/p/fkfaqq/safer-bash-scripts-with-set-euxo-pipefail
set -euxo pipefail

mkdir -p build
cd build
cmake ..
cmake --build . --config Release
ctest --build-config Release --verbose --output-on-failure

sleep 5