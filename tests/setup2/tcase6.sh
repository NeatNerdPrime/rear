#!/bin/bash

unset CONFIG_DIR

export SIMPLIFY_BONDING=y
export SIMPLIFY_BRIDGE=y
export SIMPLIFY_TEAMING=y

for eth in eth1 eth3 eth5 eth7 eth9; do ifdown $eth; done

. "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"/run.sh

for eth in eth1 eth3 vlan5eth5 eth7 eth9; do ifup $eth; done
