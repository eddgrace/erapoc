. ./Env.txt

#era -c "dbserver add ip=${Oracle12c_Source} nx_cluster_name="EraCluster" forced_install info_file=Oracle12c_Source.json"
#era -c "dbserver add ip=${Oracle12c_SIHA} nx_cluster_name="EraCluster" forced_install info_file=Oracle12c_SIHA.json"
#era -c "dbserver add ip=${Oracle19c_Source} nx_cluster_name="EraCluster" forced_install info_file=Oracle19c_Source.json"
#era -c "dbserver add ip=${Oracle19c_SIHA} nx_cluster_name="EraCluster" forced_install info_file=Oracle19c_SIHA.json"

sshpass -p Nutanix/4u scp -o StrictHostKeyChecking=no sshpass*.rpm oracle@${Oracle12c_Source}:. 
sshpass -p Nutanix/4u ssh -o StrictHostKeyChecking=no oracle@${Oracle12c_Source}  sudo rpm -ivh sshpass*
sshpass -p Nutanix/4u scp -o StrictHostKeyChecking=no sshpass*.rpm oracle@${Oracle19c_Source}:.
sshpass -p Nutanix/4u ssh -o StrictHostKeyChecking=no oracle@${Oracle19c_Source}  sudo rpm -ivh sshpass*
