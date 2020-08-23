#!/usr/bin/env bash
set -eu

UNITY_MAJOR=$(echo $UNITY_VERSION | tr "." "\n" | head -n1)

cat "./Unity_v$UNITY_MAJOR.x.ulf" | openssl enc -aes-256-cbc -pbkdf2 -e -k $CIPHER_KEY | base64 -w 0