
source ./Env.txt
curl -k -X POST \
	https://$EraServer/era/v0.9/profiles \
	-H 'Content-Type: application/json' \
	-H 'Authorization: Basic YWRtaW46bngyVGVjaDY5MCE=' \
	-d \
	'{"type":"Compute","topology":"ALL","dbVersion":"ALL","systemProfile":false,"properties":[{"name":"CPUS","value":4,"secure":false,"description":"Number of CPUs in the VM"},{"name":"CORE_PER_CPU","value":"2","secure":false,"description":"Number of cores per CPU in the VM"},{"name":"MEMORY_SIZE","value":32,"secure":false,"description":"Total memory (GiB) for the VM"}],"name":"LargeSrv"}'

