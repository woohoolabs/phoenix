#!/usr/bin/env bash

export PLATFORM=""
function detect_platform {
    unamestr=`uname`
    if [[ "$unamestr" == "Linux" ]]; then
        PLATFORM="linux"
    elif [[ "$unamestr" == "Darwin" ]]; then
        PLATFORM="mac"
    fi
}

ln -s -f $BASEPATH/woohoo /usr/local/bin/woohoo
