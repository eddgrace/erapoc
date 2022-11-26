


curl -k -X POST \
	https://10.38.235.50/era/v0.9/resources/networks \
	-H 'Content-Type: application/json' \
	-H 'Authorization: Basic YWRtaW46bngyVGVjaDY5MCE=' \
	-d \
	'{"name":"PrivateLan","type":"Static","properties":[{"name":"VLAN_GATEWAY","value":"192.168.100.1"},{"name":"VLAN_SUBNET_MASK","value":"255.255.255.0"},{"name":"VLAN_PRIMARY_DNS","value":"8.8.8.8"}],"clusterId":"f625f7d5-b3d1-4595-a130-9c8ef4a2d130","ipPools":[{"startIP":"192.168.100.11","endIP":"192.168.100.253"}]}'

