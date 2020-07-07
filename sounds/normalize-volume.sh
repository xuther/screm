#!/usr/bin/env bash

extension="${1#*.}"
ffmpeg -i "$1" -filter:a loudnorm "louder.$extension"
mv "louder.$extension" "$1"
