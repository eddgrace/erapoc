
#!/bin/bash

echo >Env.txt
grep "CVM IP" HPOC.txt | awk {'print $5'}|awk -F. {'print "export CVM"$4"="$0'} >> Env.txt
grep "Prism UI Credentials" HPOC.txt | awk -F/ {'print "export Password=" $2'} >> Env.txt

source ./Env.txt

## Get VM IP
while read VMName
do
echo "export $VMName"=`sshpass -p $Password ssh -n -o StrictHostKeyChecking=no admin@$CVM29 ncli vm ls name=${VMName}|grep IP|awk {'print $5'} |awk -F, {'print $1'}`>>Env.txt
done<VMServer.list

## Get Cluster ID
source ./Env.txt

echo "export ClusterID"=`sshpass -p Nutanix.1 ssh -o StrictHostKeyChecking=no era@$EraServer era -c '"cluster list"|head -9|tail -1'|awk {'print $2'}` >>Env.txt

