
-mysql
sudo systemctl status mysql
sudo systemctl stop mysql
sudo systemctl disable mysql

-apache
sudo systemctl status apache2
sudo systemctl stop apache2
sudo systemctl disable apache2


-zabbix agent
sudo systemctl status zabbix-agent
sudo systemctl stop zabbix-agent
sudo systemctl disable zabbix-agent


-zabbix serve
sudo systemctl status zabbix-server
sudo systemctl stop zabbix-server
sudo systemctl disable zabbix-server



sudo systemctl start gdm    # Para GNOME
sudo systemctl start lightdm # Para LightDM
sudo systemctl start sddm    # Para SDDM
sudo systemctl set-default graphical.target





sudo systemctl disable gdm    # Para GNOME
sudo systemctl stop gdm    # Para GNOME

sudo systemctl disable lightdm # Para LightDM
sudo systemctl stop lightdm # Para LightDM

sudo systemctl disable sddm    # Para SDDM
sudo systemctl stop sddm    # Para SDDM
sudo systemctl set-default multi-user.target
