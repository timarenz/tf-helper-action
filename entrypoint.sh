#!/bin/bash

export TFH_org=$1
export TFH_name=$2
export TFH_token=$3
export TFH_hostname=$4

echo $(/tf-helper/bin/tfh ${@:5})
