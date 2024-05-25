# TryHackMe one enter press .opvn file connect 
Developed By **H34TB145T**

## Description
The script aim is to connect to the **TryHackMe** network using 
thier opvn file and copy the running interface's IP address in your clipboard automatically.
So you don't need to run all the steps. You can kill your ongoing openvpn VPN connection too.


## Installation

Step 1. Run ```install.sh``` file by the command ```sudo bash install.sh```

Step 2. While installing, it will ask for your **.opvn** file, put the full path of it.

Step 3. When the installation is done, you can just type ```sudo thmvpn``` command or run ```bash THM_VPN.sh``` to start working!

## Killing already running connection
To kill ongoing openvpn connection:
rerun the command ```sudo thmvpn``` or ```bash THM_VPN.sh```
then you will see it's PID where the openvpn is running
You can choose yes or no to provide your action.

Happy Hacking!

## Uninstalling
You can run ```bash uninstall.sh```

Thanks for using this tool. I worte this just to kill my time. :))
