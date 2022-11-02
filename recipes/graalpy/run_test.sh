#!/bin/bash

set -exo pipefail

python3 --help
python3 -c "import platform; print(platform._sys_version())"
graalpy -m venv --help
graalpy -m venv testvenv
testvenv/bin/graalpy -c "import _struct; print(_struct.pack('I', 15663050))"
