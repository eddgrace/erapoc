
source Env.txt

#era -c "dbserver add ip=$Oracle12c_Source nx_cluster_name="EraCluster" forced_install info_file=Oracle12c_Source.json"
#era -c "dbserver add ip=$Oracle12c_SIHA nx_cluster_name="EraCluster" forced_install info_file=Oracle12c_SIHA.json"
#era -c "dbserver add ip=$Oracle19c_Source nx_cluster_name="EraCluster" forced_install info_file=Oracle19c_Source.json"
#era -c "dbserver add ip=$Oracle19c_SIHA nx_cluster_name="EraCluster" forced_install info_file=Oracle19c_SIHA.json"
era -c "dbserver add ip=$SQL2016_Source nx_cluster_name="EraCluster" forced_install info_file=SQL2016_Source.json"
era -c "dbserver add ip=$SQL2019_Source nx_cluster_name="EraCluster" forced_install info_file=SQL2019_Source.json"
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
sleep 300
era -c "profile software create engine=oracle_database nx_cluster_id=${ClusterID} dbserver_ip=${Oracle12c_Source} name=Oracle12c_Source"
era -c "profile software create engine=oracle_database nx_cluster_id=${ClusterID} dbserver_ip=${Oracle19c_Source} name=Oracle19c_Source"
