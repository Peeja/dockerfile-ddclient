#!/bin/bash

cat << EOF > ./ddclient.conf
protocol=$PROTOCOL, use=web, server=$SERVER, login=$LOGIN, password=$PASSWORD $HOST
EOF

chmod 600 ./ddclient.conf

ddclient -foreground -file ./ddclient.conf
