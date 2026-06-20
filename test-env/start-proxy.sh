#!/bin/bash

if ! command -v mitmproxy >/dev/null 2>&1; then
	echo "Warning: mitmproxy not found! Attempting to install!"
	sudo pacman -S mitmproxy
	if [[ $? -ne 0 ]]; then
		echo "Error: mitmproxy couldnt be installed. Exiting..."
		exit 1
	fi
fi

mitmweb --set tls_version_client_min=TLS1 --set tls_version_server_min=TLS1 --set key_size=1024
