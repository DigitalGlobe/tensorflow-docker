#!/usr/bin/env bash

nvidia-docker run --rm --name testtensorflow -v /opt/mnt:/mnt tdgp/testtensorflow /opt/testTensorflow.sh