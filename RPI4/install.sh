#!/bin/bash

## Change hostname
rm /etc/hosts
cp ./etc/* /etc/

sh ./scripts/usb1.sh
