#!/bin/sh
# Modified from https://github.com/polybar/polybar-scripts/blob/master/polybar-scripts/isrunning-service/isrunning-service.sh

UNIT="openvpn-client@fra_vpn.service"

if [ "$(systemctl is-active "$UNIT")" = "active" ]; then
	echo "%{T6}%{T-}"
else
	echo "%{T6}%{T-}"
fi
