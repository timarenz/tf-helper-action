#!/bin/bash

export TFH_org=$1
export TFH_name=$2
export TFH_token=$3
export TFH_hostname=$4

function tfh_func () {
    /tf-helper/bin/tfh $@
    return $?
}

tfh_func ${@:5}
exit $?