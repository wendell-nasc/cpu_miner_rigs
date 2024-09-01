

# usuario root
sudo adduser wendell
usermod -aG sudo wendell

# alterar senha do root
sudo -i
passwd
ou
sudo passwd wendell
sudo passwd root




# Modem NOKIA - 
nokia g-1425g-a
User: AdminGPON
Password: ALC#FGU



#hive
passwd
cd /hive-config
rm -r rig.conf

# Instalação Inicial
sudo mkdir -p /opt/xmrig
sudo chmod -R 777 /opt/xmrig
 




# Instalar o git 
sudo apdate
sudo apt upgrade -y 
sudo apt install git -y

## install requirements
sudo apt install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y




#  Zabbix Agent
lsb_release -a
wget https://repo.zabbix.com/zabbix/6.2/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.2-2%2Bubuntu22.04_all.deb
dpkg -i zabbix-release_6.2-2+ubuntu22.04_all.deb

wget http://repo.zabbix.com/zabbix/3.0/debian/pool/main/z/zabbix-release/zabbix-release_3.0-2+stretch_all.deb
dpkg -i zabbix-release_3.0-2+stretch_all.deb
apt-get update

sudo apt update
sudo apt upgrade

sudo nano /etc/zabbix/zabbix_agentd.conf
Server=n

ServerActive=127.0.0.1
Hostname=192.168.1.130
Hostname=Rig03

sudo apt-get install zabbix-agent
sudo systemctl enable zabbix-agent 
sudo systemctl restart zabbix-agent 
sudo systemctl status zabbix-agent

sudo journalctl -f -u zabbix-agent
sudo mkdir /var/log/zabbix-agent
sudo mkdir /var/log/zabbix-agent/zabbix_agentd.log
sudo chmod -R 777 /var/log/zabbix-agent

-
-zabbix acesso
http://192.168.1.130/zabbix
Usuario Admin (com A maiusculo)
senha zabbix (tudo minusculo)

-config
sudo nano /etc/zabbix/zabbix_server.conf
sudo nano /etc/zabbix/zabbix_agentd.conf

sudo service zabbix-agent restart
sudo update-rc.d zabbix-agent defaults
sudo update-rc.d zabbix-agent enable


https://www.layerstack.com/resources/tutorials/How-to-install-ZABBIX-on-Ubuntu22

-Istalar banco de dados, servidor web e por ultimo zabbix

sudo apt install -f nginx -y
sudo apt install -f nginx-core -y
sudo apt install -f nginx-common -y
sudo apt install -f nginx-full -y
sudo apt install zabbix-nginx-conf -y

-Se der erro para iniciar o nginx
sudo service nginx disable
sudo service nginx stop
sudo rm /etc/nginx/sites-enabled/default
sudo tail -n 50 /var/log/nginx/error.log

-apache 
sudo systemctl status apache2
sudo systemctl enable apache2
sudo systemctl restart apache2
sudo mkdir -p /var/log/apache2/
sudo chmod -R 777 /var/log/apache2/

sudo /var/log/apache2/
sudo mkdir -p /opt/xmrig
sudo chmod -R 777

sudo chmod -R 744 /var/log/zabbix/zabbix_server.log
sudo chmod -R 744 /var/log/zabbix/zabbix_server.log


zabbix_server [2897]: cannot open "/var/log/zabbix/zabbix_server.log": [2] No such file or directory
Aug 30 21:58:35 rig0 systemd[1]: zabbix-server.service: Can't open PID file /run/zabbix/zabbix_server.pid (yet?) after start: Operation not permitted



wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-4+ubuntu22.04_all.deb  
sudo dpkg -i zabbix-release_6.0-4+ubuntu22.04_all.deb 
sudo apt update 
sudo apt upgrade -y 

-server
http://site.joelti.com.br/zabbix-proxy-instale-no-ubuntu-22-04-20-04-em-10-minutos/
sudo apt install zabbix-server-mysql zabbix-frontend-php
sudo apt install zabbix-agent
-mysql
sudo apt install software-properties-common -y
curl -LsS -O https://downloads.mariadb.com/MariaDB/mariadb_repo_setup
sudo bash mariadb_repo_setup --mariadb-server-version=10.6
sudo apt update
sudo apt -y install mariadb-common mariadb-server-10.6 mariadb-client-10.6
sudo systemctl start mariadb
sudo systemctl enable mariadb
verificar porta rodando mariadb
mysql -u root -p -e "SHOW VARIABLES LIKE 'port';"





# open SSH
sudo apt install openssh-server -y
sudo ufw disable


# ConfiguracaoHostnameHostsNetplan.md

sudo vim /etc/hostname

# Alterando as entradas no arquivo Hosts do Ubuntu Server
#adicionar o nome de domínio e apelido nas linhas 2 e 3
	#OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DO DOMÍNIO E APELIDO PARA O SEU CENÁRIO
	127.0.0.1    localhost.pti.intra    localhost
	127.0.1.1    wsvaamonde.pti.intra   wsvaamonde
	172.16.1.20  wsvaamonde.pti.intra   wsvaamonde


# Instalando os principais software de rede no Ubuntu Server
sudo apt update
sudo apt install bridge-utils ifenslave net-tools -y



 # Verificando informações do Hardware de Rede no Ubuntu Server
#verificando os dispositivos PCI de Placa de Rede instalados
#opções do comando lspci: -v (verbose), -s (show)
#opção do comando grep: -i (ignore-case)
#opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
sudo lspci -v | grep -i ethernet

#verificando os detalhes do hardware de Placa de Rede instalada
sudo lshw -class network
    


# Verificando as informações de Endereços IPv4 no Ubuntu Server

#verificando as configurações de endereçamento IP da Placa de Rede instalada
#opção do comando ifconfig: -a (all)
sudo ifconfig -a
sudo ip address show

#verificando as configurações de Gateway (route)
#opção do comando route: -n (number)
sudo route -n
sudo ip route

#verificando as informações de cache dos Servidores DNS (resolução de nomes)
sudo resolvectl


# Alterando as configurações da Placa de Rede do Ubuntu Server

#OBSERVAÇÃO: o nome do arquivo pode mudar dependendo da versão do Ubuntu Server.
#/etc/netplan/00-installer-config.yaml #Padrão do Ubuntu Server 22.04.x LTS

#OBSERVAÇÃO IMPORTANTE: o arquivo de configuração do Netplan e baseado no formato 
#de serialização de dados legíveis YAML (Yet Another Markup Language) utilizado 
#pela linguagem de programação Python, muito cuidado com o uso de espaços e 
#tabulação e principalmente sua indentação.

#listando o conteúdo do diretório do Netplan
#opção do comando ls: -l (long listing), -h (human-readable)
ls -lh /etc/netplan/

#fazendo o backup do arquivo de configuração original do Netplan
#opção do comando cp: -v (verbose)
sudo cp -v /etc/netplan/00-installer-config.yaml /etc/netplan/00-installer-config.yaml.old

#editando o arquivo de configuração do Netplan
sudo vim /etc/netplan/00-installer-config.yaml

# Aplicando as configurações do Netplan e verificando as informações de Rede do Ubuntu Server

#aplicando as mudanças do Netplan em modo Debug (detalhado)
sudo netplan --debug apply

#OBSERVAÇÃO IMPORTANTE: você pode utilizar a opção: try que caso aconteça alguma
#falha na hora de configurar a placa de rede ele reverte a configuração inicial
sudo netplan --debug try

#verificando o endereço IPv4 da Interface de Rede
sudo ifconfig
sudo ip address show

#verificando as informações de Gateway padrão
#opção do comando route: -n (numeric)
sudo route -n
sudo ip route

#verificando as informações dos Servidores DNS e Pesquisa de Domínio
sudo resolvectl

#testando a conexão com a Internet
ping 8.8.8.8
ping google.com

#verificando as informações do nome do servidor Ubuntu Server
#opção do comando hostname: -A (all-fqdns), -d (domain), -i (ip address)
sudo hostname
sudo hostname -A
sudo hostname -d
sudo hostname -i


# Verificando as informações do Locale (Localidade) do Sistema Operacional Ubuntu Server

#verificando as informações detalhas de localidade do sistema
sudo localectl

#verificando as informações de localidades instaladas no sistema 
#opção do comando locale: -a (all-locales)
sudo locale -a


# Configurando o Locale (Localidade) do Brasil no Sistema Operacional Ubuntu Server

#OBSERVAÇÃO IMPORTANTE: pt_BR.UTF-8" é uma codificação de caractere que indica o uso
#da língua portuguesa (pt) como falada no Brasil (BR) com a codificação UTF-8. UTF-8 
#(Unicode Transformation Format - 8 bits) é uma codificação de caracteres que pode 
#representar qualquer caractere no conjunto Unicode, o que inclui praticamente todos 
#os caracteres de todas as línguas do mundo.

#gerando a localidade do Português do Brasil
sudo locale-gen pt_BR.UTF-8

#configurando a localidade Português do Brasil
#opção do comando localectl: set-locale (Set the system locale)
sudo localectl set-locale LANG=pt_BR.UTF-8

#atualizando as localidades do Português do Brasil e Linguagem do Sistema
sudo update-locale LANG=pt_BR.UTF-8 LC_ALL=pt_BR.UTF-8 LANGUAGE="pt_BR:pt:en"

#recomendado rebootar o sistema para testar as localidades
sudo reboot

#verificando as mudanças de localidades do sistema
#opção do comando locale: -a (all-locales)
sudo localectl
sudo locale -a





# configurar xmrig
https://github.com/mikenizo808/How-To-Crypto-Mine-for-Monero-XMR-on-Ubuntu-20.04-with-XMRig