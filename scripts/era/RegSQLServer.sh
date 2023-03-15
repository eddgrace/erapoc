
curl -k -X POST \
	https://10.38.184.55/era/v0.9/dbservers/register \
	-H 'Content-Type: application/json' \
	-H 'Authorization: Basic ' \
	-d \	'{"actionArguments":[{"name":"is_gmsa_sql_service_account","value":false},{"name":"sql_login_used","value":false},{"name":"same_as_admin","value":true},{"name":"sysadmin_username_win","value":"administrator"},{"name":"sysadmin_password_win","value":"Nutanix/4u"},{"name":"instance_name","value":"MSSQLSERVER"}],"vmIp":"10.38.184.60","nxClusterUuid":"8d0e4514-6db1-4311-95d7-e2415ef253db","databaseType":"sqlserver_database","forcedInstall":true,"workingDirectory":"c:\\","name":"undefined-DBCluster","username":"administrator","password":"Nutanix/4u","eraDeployBase":"c:\\"}'
