#!/usr/bin/env bash

OUTPUT=/mnt/work/output/dump

mkdir -p "${OUTPUT}"

python -c "import tensorflow" > "${OUTPUT}/tensorflow" 2>&1

# write status.json
if [ $? -eq 0 ]
then
  printf "{\"status\": \"success\", \"reason\": \"Successfully imported tensorflow\"}" > "${STATUS_JSON}"
else
  printf "{\"status\": \"failed\", \"reason\": \"Failed to import tensorflow\"}" > "${STATUS_JSON}"
fi