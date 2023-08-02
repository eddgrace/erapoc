#!/bin/bash -x 
source Env.txt


era -c "dbserver add ip=$Oracle12c_Source nx_cluster_name="EraCluster" forced_install info_file=Oracle12c_Source.json"
era -c "dbserver add ip=$Oracle12c_SIHA nx_cluster_name="EraCluster" forced_install info_file=Oracle12c_SIHA.json"
era -c "dbserver add ip=$Oracle19c_Source nx_cluster_name="EraCluster" forced_install info_file=Oracle19c_Source.json"
era -c "dbserver add ip=$Oracle19c_SIHA nx_cluster_name="EraCluster" forced_install info_file=Oracle19c_SIHA.json"
era -c "dbserver add ip=$SQL2016_Source nx_cluster_name="EraCluster" forced_install info_file=SQL2016_Source.json"
era -c "dbserver add ip=$SQL2019_Source nx_cluster_name="EraCluster" forced_install info_file=SQL2019_Source.json"



echo " Please Check NDB Operation and till all register process done, then execute CreateProfile.sh "


