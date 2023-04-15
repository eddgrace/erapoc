#!/bin/bash -x 


source Env.txt
OraSrvList=("Oracle12c_Source" "Oracle19c_Source" "Oracle12c_SIHA" "Oracle19c_SIHA")
for VM in ${OraSrvList[@]}
do

echo $VM IP is ${!VM}
sshpass -p Nutanix/4u scp sshpass-1.06-1.el7.x86_64.rpm oracle@${!VM}:/tmp
sshpass -p Nutanix/4u ssh oracle@${!VM} sudo rpm -ivh /tmp/sshpass-1.06-1.el7.x86_64.rpm
era -c "dbserver add ip=${!VM} nx_cluster_name="EraCluster" forced_install info_file=${VM}.json"
done
era -c "profile software create engine=oracle_database nx_cluster_id=${ClusterID} dbserver_ip=${Oracle12c_Source} name=Oracle12c_Source"
era -c "profile software create engine=oracle_database nx_cluster_id=${ClusterID} dbserver_ip=${Oracle19c_Source} name=Oracle19c_Source"
