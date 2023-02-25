source Env.txt

era -c "profile software create engine=oracle_database nx_cluster_id=${ClusterID} dbserver_ip=${Oracle12c_Source} name=Oracle12c_Source" 
era -c "profile software create engine=oracle_database nx_cluster_id=${ClusterID} dbserver_ip=${Oracle19c_Source} name=Oracle19c_Source" 
