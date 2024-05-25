#!/bin/sh
user=$(whoami)
if [ "$user" == "root" ];
then
        sudo apt install xclip
        echo "--------------------------------------------"
        echo "Please enter the path to your VPN file:"
        read vpn_path
        echo "$vpn_path" > vpn_path.config
        echo "vpn_path.config file created!"
        sudo cp THM_VPN.sh /usr/bin/thmvpn
	sudo chmod +x /usr/bin/thmvpn
        sudo cp vpn_path.config /usr/bin/vpn_path.config
        
        if true
        then
        	echo "++++++++++++++++++++++++++++++++++++++++++++"
	       	echo "|------- Installation completed. ----------|"
	        echo "|------- DEVELOPED BY H34TB145T -----------|"
	        echo "|----- Type 'sudo thmvpn' to run ----------|"
	        echo "++++++++++++++++++++++++++++++++++++++++++++"
        else
                echo "Failed! Try reinstalling again!"
        fi

else
        echo "Permission Denied! Run with sudo!"
fi
