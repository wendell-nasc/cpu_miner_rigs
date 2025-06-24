

# hostname
sudo nano /etc/hostname
192.168.1.174 - rig172-mini-i7_3570[65]


# crontab

sudo EDITOR=nano crontab -e
desativar hives

# servicos
sudo apt install netplan -y && sudo apt install openssh-server -y && sudo ufw allow 22/tcp && sudo apt autoremove -y


sudo systemctl disable hive-console.service && sudo systemctl disable hive-ttyd.service && sudo systemctl disable hive-watchdog.service && sudo systemctl disable hive.service && sudo systemctl disable irqbalance.service  

sudo reboot now



# netplan

sudo mkdir /etc/netplan/  
sudo nano /etc/netplan/01-network-manager-all.yaml




sudo lsof -i :2983
sudo kill -9 17826



sudo netplan apply



Passo 1: Desativar os serviços
Se você só quiser desativar os serviços para que eles não sejam iniciados automaticamente na inicialização, use os comandos abaixo:

Desativar o serviço hive-console.service:

bash
Copiar código
sudo systemctl disable hive-console.service
Desativar o serviço hive-ttyd.service:

bash
Copiar código
sudo systemctl disable hive-ttyd.service
Desativar o serviço hive-watchdog.service:

bash
Copiar código
sudo systemctl disable hive-watchdog.service
Desativar o serviço hive.service:

bash
Copiar código
sudo systemctl disable hive.service
Desativar o serviço irqbalance.service:

bash
Copiar código
sudo systemctl disable irqbalance.service
Passo 2: Parar os serviços imediatamente
Se você quiser parar os serviços em execução no momento, execute os comandos abaixo:


DESATIVAR TUDO
sudo systemctl disable hive-console.service && sudo systemctl disable hive-ttyd.service && sudo systemctl disable hive-watchdog.service && sudo systemctl disable hive.service && sudo systemctl disable irqbalance.service  








Parar o serviço hive-console.service:

bash
Copiar código
sudo systemctl stop hive-console.service
Parar o serviço hive-ttyd.service:

bash
Copiar código
sudo systemctl stop hive-ttyd.service
Parar o serviço hive-watchdog.service:

bash
Copiar código
sudo systemctl stop hive-watchdog.service
Parar o serviço hive.service:

bash
Copiar código
sudo systemctl stop hive.service
Parar o serviço irqbalance.service:

bash
Copiar código
sudo systemctl stop irqbalance.service
Passo 3: Remover os pacotes (Opcional)
Se você quiser remover completamente esses serviços do seu sistema (caso eles não sejam mais necessários), você pode tentar desinstalar os pacotes que os instalaram:

Remover o serviço hive-console.service, hive-ttyd.service, hive-watchdog.service, hive.service (se fazem parte de um pacote HiveOS):

bash
Copiar código
sudo apt remove hive
Remover o serviço irqbalance.service:

bash
Copiar código
sudo apt remove irqbalance


































UNIT LOAD ACTIVE SUB DESCRIPTION

accounts-daemon.service loaded active running 
Accounts Servicea
td.service loaded active running 
Deferred execution schedulercron.service loaded active running Regular background 
program processing daemondbus.service loaded active running D-Bus System Message 
Busgetty@tty2.service loaded active running Getty on 
tty2getty@tty3.service loaded active running Getty on 
tty3getty@tty4.service loaded active running Getty on 
tty4getty@tty5.service loaded active running Getty on 
tty5getty@tty6.service loaded active running 
Getty on tty6haveged.service loaded active running Entropy daemon using the HAVEGE 
algorithm
hive-console.service loaded active running 
Hive Console on 
TTY1
hive-ttyd.service loaded active running 
Hive-ttyd 
service
hive-watchdog.service loaded active running 

Hive Watchdog Service
hive.service loaded 
active running 
Hiveirqbalance.service loaded active 



running irqbalance daemonnetplan.service loaded active running LSB: Netplan calendar service.networkd-
dispatcher.service loaded active running Dispatcher daemon for 
systemd-networkdpolkit.service loaded active 
running Authorization Managerrngd.service loaded active running Start entropy gathering daemon (rngd)
rpcbind.service loaded active running RPC 
bind portmap servicersyslog.service loaded active running 
System Logging Servicessh.service loaded active running OpenBSD Secure Shell 
serversystemd-journald.service loaded active running Journal 
Servicesystemd-logind.service loaded active running Login 
Servicesystemd-networkd.service loaded active running Network 
Servicesystemd-resolved.service loaded active running Network Name 
Resolutionsystemd-timesyncd.service loaded active running Network Time 
Synchronizationsystemd-udevd.service loaded active running udev 
Kernel Device Managerwpa_supplicant.service loaded active 
running WPA supplicantxdag_gustavo.service loaded active running Start XMRig and Deroluna Miners