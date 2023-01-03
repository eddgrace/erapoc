#!/bin/bash

VMName=EraServer
sshpass -p $Password ssh admin@$CVM29 ncli vm ls name=${VMName}|grep IP|awk {'print $5'}



