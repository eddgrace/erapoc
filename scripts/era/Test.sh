#!/bin/bash
source ./Env.txt

function GetIP()
{
tee sshpass -p $Password ssh admin@$CVM29 ncli vm ls name=$1 |grep IP|awk {'print $5'} 
}

 var="magic_variable_$EraServer"
 echo "Var is ${!var}"

while read VMName
do
#GetIP $VMName
echo $VMName
done<VMServer.list
