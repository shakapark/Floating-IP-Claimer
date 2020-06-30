#!/bin/bash

case $PROVIDER in

    OPENSTACK)
        source openstack/openstack.sh
        openstack-claim

    *)
        echo "PROVIDER: [OPENSTACK]"
        exit 1
esac
