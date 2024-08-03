#!/bin/bash

echo "++++++++++++++++++++++++++++++++++++++++++++"
echo "|------- DEVELOPED BY H34TB145T -----------|"
echo "|-------     TryHackMe_opvn     -----------|"
echo "++++++++++++++++++++++++++++++++++++++++++++"

user=`whoami`

if [ ! "$user" == "root" ]
then 
	echo "You have no priviledge!"
	exit 1
else
	if [[ -f /bin/vpn_path.config || -f /usr/bin/vpn_path.config ]]; then
    		vpn_path=$(cat /bin/vpn_path.config)
	else
    		echo "vpn_path.config file not found. Please run the install.sh script first."
    		exit 1
	fi
	#pid_opvn=`pgrep openvpn`
	if pgrep -x "openvpn" > /dev/null
	then
		echo "openvpn is already connecting to TryHackMe vpn at $(pgrep openvpn) PID"
		echo "Do you want to kill it? (Y/n)"
		read -e response

		if [ -z "$response" ]; then
    			response="y"
		fi

		response=$(echo "$response" | tr '[:upper:]' '[:lower:]')
		if [[ "$response" == "yes" || "$response" == "y" ]]; then
    			echo "You chose -> 'yes'."
			echo "Killing openvpn..."
			vpn_pid=$(pgrep openvpn)
			sudo kill $vpn_pid
			sleep 2
			echo "KILLED -> $vpn_pid!"
		elif [[ "$response" == "no" || "$response" == "n" ]]; then
    			echo "OK Then happy hacking!"
		else
    			echo "Invalid response. Please enter 'yes' or 'no'."
		fi

	else
		echo "User:$user."
		echo "VPN FILE PATH -> $vpn_path"
        	echo "Connecting openvpn..."
        	openvpn --config $vpn_path --daemon 
        	sleep 10
        	if true 
        	then
                	echo "Initialization Sequence Completed!"
			echo "Running in PID -> $(pgrep openvpn)"
			echo "Getting interface and IP address..."
			sleep 5
			interface=$(ip address | grep -m 1 -Eo "tun0")
			if [ "$interface" == "tun0" ]; then
				ip_address=$(ip address show dev tun0 | grep -oE '\b([0-9]{1,3}\.){3}[0-9]{1,3}\b')
				echo "Your $interface IP -> $ip_address"
				echo "$ip_address" | xclip -selection clipboard
				echo "IP already copied into your clipboard!. Paste it (ctrl + shift + v)"
			fi
        	else
                	echo "Error connecting vpn! Something's went wrong!"
        	fi
	fi
fi


