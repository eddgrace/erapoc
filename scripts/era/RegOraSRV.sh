#!/bin/bash -x 


OraSrvList=("Oracle12c_Source" "Oracle19c_Source" "Oracle12c_SIHA" "Oracle19c_SIHA")
for VM in ${OraSrvList[@]}
do
VMIP=`./GetVMIP.sh $VM`
echo $VM IP is $VMIP
sshpass -p Nutanix/4u scp sshpass-1.06-1.el7.x86_64.rpm oracle@${VMIP}:/tmp
sshpass -p Nutanix/4u ssh oracle@${VMIP} sudo rpm -ivh /tmp/sshpass-1.06-1.el7.x86_64.rpm
era -c "dbserver add ip=$VMIP nx_cluster_name="EraCluster" forced_install info_file=${VM}.json"
done
