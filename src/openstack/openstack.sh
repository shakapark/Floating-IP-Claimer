#!/bin/bash

function need-claim() {
    PORT_ID = $(openstack port list | grep $FIXED_IP | awk '{print $2}')
    echo $PORT_ID

    FLOATING_PORT_ID = $(openstack floating ip list | grep $FLOATING_IP | awk '{print $8}')
    echo $FLOATING_PORT_ID

    if [ $PORT_ID = $FLOATING_PORT_ID ]; then
        false
    else
        true
    fi
}

function openstack-claim() {
    if need-claim; then
        echo "needed"
    else
        echo "not needed"
    fi
}
