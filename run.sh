#!/bin/bash -l
set -euo pipefail
python3.9 -m pip install pyperformance
exec pyperformance run -f
