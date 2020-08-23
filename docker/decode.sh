#!/usr/bin/env bash
set -eu

UNITY_MAJOR=$(echo $UNITY_VERSION | tr "." "\n" | head -n1)

cat "./Unity_v$UNITY_MAJOR.x.ulf-cipher" | base64 --decode | openssl enc -pbkdf2 -aes-256-cbc -d -k $CIPHER_KEY
