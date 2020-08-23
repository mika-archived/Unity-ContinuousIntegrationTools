#!/usr/bin/env bash
set -eu

xvfb-run --auto-servernum --server-args='-screen 0 640x480x24' \
  /opt/Unity/Editor/Unity \
  -logFile /dev/stdout \
  -batchmode \
  -nographics \
  -createManualActivationFile | tee >> /var/log/unity3d.log

echo "Please activate your license file on https://license.unity3d.com/manual"