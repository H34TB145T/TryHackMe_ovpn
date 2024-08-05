# An automation Bash script to connect and disconnect TryHackMe “.ovpn” VPN in the background process
Developed By **H34TB145T**

## Description
The aim of the script is to connect to the **TryHackMe** network using 
their .ovpn file but in the backgound of your system without populating the terminal space
and copy the running interface's IP address into your clipboard automatically.
So you don't need to run all the steps. You can kill your ongoing openvpn VPN connection too.

**NOTE: This script is only compatible on Linux.**


## Installation

**Step 1.** Clone the repository using 

```git clone https://github.com/H34TB145T/TryHackMe_ovpn.git```

```cd TryHackMe_ovpn```

**Step 2.** Run ```install.sh``` file by the command ```sudo bash install.sh```

**Step 3.** While installing, it will ask for your **.ovpn** file, put the full path of it. When you press enter, a file called `vpn_path.config` will be created!

**Step 4.** When the installation is done, you can just type ```sudo thmvpn``` command or run ```bash THM_VPN.sh``` to start working!

## Killing already running connection
To kill ongoing openvpn connection:
rerun the command ```sudo thmvpn``` or ```bash THM_VPN.sh```
then you will see it's PID where the openvpn is running
You can choose yes or no to provide your action.

Happy Hacking!

## Uninstalling
You can run ```bash uninstall.sh```

Thanks for using this tool. I worte this just to kill my time. :))

![screenshot](https://raw.githubusercontent.com/H34TB145T/TryHackMe_ovpn/main/image.jpg)
