if [ "$(whoami)" == "root" ];
then
        rm -rf /bin/vpn_path.config
        rm -rf /bin/thmvpn
        rm ./vpn_path.config
        echo "Uninstall Successfully!"
else
        echo "You dont't have permission!"
fi
