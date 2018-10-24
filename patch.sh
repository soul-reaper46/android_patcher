#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'frameworks/opt/net/voip'
    'frameworks/opt/net/wifi'
    'frameworks/opt/telephony'
    'system/connectivity/wificond'
    'system/vold'
    'frameworks/base'
 )

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/patches/${repository}"/*

    cd "${ROOT}"
done
