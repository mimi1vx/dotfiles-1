#!/usr/bin/env bash
command -v kubectl >/dev/null 2>&1 && source <(kubectl completion bash)
