#!/usr/bin/env bash

OUTPUT=/mnt/work/output/dump

mkdir -p "${OUTPUT}"

python -c "import tensorflow" > "${OUTPUT}/tensorflow" 2>&1