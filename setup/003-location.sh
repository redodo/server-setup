#!/bin/bash
# Sets the geographic server location (used in /etc/update-motd.d/30-connected)
ip=$(curl https://ipinfo.io/ip)
geojson=$(curl http://ip-api.com/json/$ip)
location=$(echo $geojson | jq '"\(.city), \(.country)"')
hostnamectl set-location "$location"
