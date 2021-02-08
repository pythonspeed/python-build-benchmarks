#!/bin/bash -l
set -euo pipefail
pip install pyperformance
exec pyperformance run -f -b 2to3,unpickle_pure_python,django_template -o "$1"
