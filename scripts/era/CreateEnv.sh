echo "NDBServerIP="`era -c "env show"|grep IP|awk {'print $6'}` >Env.txt
era -c "cluster list"|head -9|tail -1|awk {'print "ClusterID1="$2'}>>Env.txt
