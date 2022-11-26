#!/bin/bash

VMName=$1
sshpass -p nx2Tech912! ssh admin@10.38.56.29 ncli vm ls name=${VMName}|grep IP|awk {'print $5'}


