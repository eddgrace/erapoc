era -c "dbserver add ip=10.38.235.57 nx_cluster_name="EraCluster" forced_install info_file=Oracle12c_Source.json"
era -c "dbserver add ip=10.38.235.61 nx_cluster_name="EraCluster" forced_install info_file=Oracle12c_ASM.json"
era -c "dbserver add ip=10.38.235.56 nx_cluster_name="EraCluster" forced_install info_file=Oracle19c_Source.json"
era -c "dbserver add ip=10.38.235.60 nx_cluster_name="EraCluster" forced_install info_file=Oracle19c_ASM.json"
