#!/bin/bash -x 


OraSrvList=("Oracle12c_Source" "Oracle19c_Source" "Oracle12c_SIHA" "Oracle19c_SIHA")
for VM in ${OraSrvList[@]}
do
VMIP=`./GetVMIP.sh $VM`

echo $VM IP is $VMIP
sshpass -p Nutanix/4u scp sshpass-1.06-1.el7.x86_64.rpm oracle@${VM}:/tmp
sshpass -p Nutanix/4u ssh oracle@${VM} sudo rpm -ivh /tmp/sshpass-1.06-1.el7.x86_64.rpm
sshpass -p Nutanix.1 ssh -n -o StrictHostKeyChecking=no scp *.json era@$EraServer
sshpass -p Nutanix.1 ssh -n -o StrictHostKeyChecking=no era -c "dbserver add ip=$VM nx_cluster_name="EraCluster" forced_install info_file=${VM}.json"
done
