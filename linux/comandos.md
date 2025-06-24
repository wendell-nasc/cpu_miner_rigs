# Chave SSH

ssh-keygen -t rsa -b 4096 -C "wendellxj@hotmail.com"


Your identification has been saved in C:\Users\wendell/.ssh/id_rsa
Your public key has been saved in C:\Users\wendell/.ssh/id_rsa.pub

Exibir chave:

cat ~/.ssh/id_rsa.pub



# HIVE  - DOWNLOADS

https://download.hiveos.farm/history/

# comando para quando ubuntu for reiniciadop

sudo nano /etc/wpa_supplicant/wpa_supplicant.conf

network={
    ssid="Thais-5G"
    psk="Dud@05062007"
}



sudo nano /etc/rc.local

#!/bin/bash
sudo wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf
exit 0

sudo chmod +x /etc/rc.local
sudo systemctl enable rc-local.service
sudo systemctl start rc-local.service


# configurar rede 

sudo nano /etc/network/interfaces
auto eth0
iface eth0 inet static
    address 192.168.1.100
    netmask 255.255.255.0
    gateway 192.168.1.1
    dns-nameservers 8.8.8.8 8.8.4.4

sudo service networking restart
sudo systemctl status networking.service



# ultima vez foi feito boot reiniciou ou desligou
who -b


# trava
ps aux | grep -i apt && ps aux | grep -i dpkg

sudo kill -9 PID

sudo rm /var/lib/dpkg/lock-frontend && sudo rm /var/cache/apt/archives/lock


sudo dpkg --configure -a && sudo apt update &&  sudo apt upgrade -y



# monitor notebook
sudo nano /etc/systemd/logind.conf

HandleLidSwitch=ignore
HandleLidSwitchDocked=ignore


sudo systemctl restart systemd-logind


# verificar porta

sudo lsof -i :10100  



# placa de video ubuntu
Usando o comando lspci:

bash
Copiar código
lspci | grep -i vga
Esse comando lista todos os dispositivos PCI e filtra os relacionados à VGA (adaptador de vídeo). Ele geralmente mostra o nome e o fabricante da placa de vídeo.

Usando o comando lshw:

bash
Copiar código
sudo lshw -C display
Esse comando exibe detalhes sobre o hardware de exibição, incluindo o modelo da placa de vídeo, a versão do driver e outras informações detalhadas.

Usando o comando glxinfo (necessário instalar mesa-utils): Primeiro, instale o pacote:

bash
Copiar código
sudo apt update
sudo apt install mesa-utils





# placa mae
 sudo lshw -short | grep -1 "system"

# crontab

sudo EDITOR=nano crontab -e
desativar hives

sudo systemctl stop haveged.service && sudo systemctl disable haveged.service && sudo apt remove --purge -y haveged && sudo systemctl stop rpcbind.service && sudo systemctl disable rpcbind.service && sudo apt remove --purge -y rpcbind && sudo systemctl stop wpa_supplicant.service && sudo systemctl disable wpa_supplicant.service && sudo apt remove --purge -y wpasupplicant && sudo apt autoremove -y

# 1. Editar o arquivo GRUB

dpkg --list | grep linux-image



Você precisará ajustar as configurações do GRUB para que ele inicie com o kernel desejado.

Abra o arquivo de configuração do GRUB:

bash
Copiar código
sudo nano /etc/default/grub
Encontre a linha:

bash
Copiar código
GRUB_DEFAULT=0
Altere para:

bash
Copiar código
GRUB_DEFAULT="Advanced options for Ubuntu>Ubuntu, with Linux 6.8.0-45-generic"
Isso informa ao GRUB para sempre inicializar automaticamente com o kernel 6.8.0-45-generic.

2. Atualizar o GRUB
Após editar o arquivo de configuração, você precisa atualizar o GRUB:

bash
Copiar código
sudo update-grub
3. Reiniciar o sistema
Agora, reinicie o sistema para aplicar as alterações:

bash
Copiar código
sudo reboot

# servicoes
Para listar os serviços em execução no Ubuntu, você pode usar o comando systemctl. Aqui estão algumas opções que você pode utilizar no terminal:

Listar todos os serviços ativos:

bash
Copiar código
systemctl list-units --type=service --state=running
Listar todos os serviços, incluindo os inativos:

bash
Copiar código
systemctl list-units --type=service
Verificar o status de um serviço específico:

bash
Copiar código
systemctl status nome_do_serviço
Listar serviços que estão habilitados para iniciar na inicialização:

bash
Copiar código
systemctl list-unit-files --type=service --state=enabled



# Rede IPS
Para identificar todos os IPs ativos na sua rede interna no intervalo de 192.168.1.1 a 192.168.1.254, você pode utilizar o comando nmap, que é uma ferramenta popular para escaneamento de redes.

Aqui está como fazer isso no Linux:

Instale o nmap (se ainda não estiver instalado):

bash
Copiar código
sudo apt-get install nmap -y
Execute o seguinte comando para escanear o intervalo de IPs da sua rede:

bash
Copiar código
sudo nmap -sn 192.168.1.1-254



# 3. Restaurar Pacotes para a Versão Original
sudo apt-get install --reinstall $(dpkg --get-selections | grep -v deinstall | awk '{print $1}')





### DESATIVAR MODO GRAFICO

Alternativa: Alterar o nível de execução permanentemente
Se você deseja que o Ubuntu inicialize sempre em modo texto, você pode editar o arquivo de configuração:

Abrir o terminal (caso já esteja em modo gráfico):

bash
Copiar código
sudo systemctl set-default multi-user.target
Reiniciar o sistema:

Após isso, ao reiniciar, o Ubuntu deve iniciar diretamente no modo texto.
Para voltar ao modo gráfico, use:

bash
Copiar código
sudo systemctl set-default graphical.target

==========================================================================
==========================================================================
==========================================================================
# forççar atualizacao
#configurar repositorio jammy

sudo nano /etc/apt/sources.list

inserir:

# Repositórios principais
deb http://archive.ubuntu.com/ubuntu/ jammy main restricted universe multiverse
deb-src http://archive.ubuntu.com/ubuntu/ jammy main restricted universe multiverse

# Repositórios de atualização de segurança
deb http://security.ubuntu.com/ubuntu jammy-security main restricted universe multiverse
deb-src http://security.ubuntu.com/ubuntu jammy-security main restricted universe multiverse

# Repositórios de atualização (patches, correções)
deb http://archive.ubuntu.com/ubuntu/ jammy-updates main restricted universe multiverse
deb-src http://archive.ubuntu.com/ubuntu/ jammy-updates main restricted universe multiverse

# Repositórios de correções do sistema
deb http://archive.ubuntu.com/ubuntu/ jammy-backports main restricted universe multiverse
deb-src http://archive.ubuntu.com/ubuntu/ jammy-backports main restricted universe multiverse



# lts to normal
sudo nano /etc/update-manager/release-upgrades
Alterar de Prompt=lts para Prompt=normal

sudo apt update && sudo apt upgrade -y


sudo screen -S upgrade0 apt update

sudo screen -S upgrade1 apt upgrade -y

sudo screen -S upgrade1 apt dist-upgrade -y

sudo screen -S upgrade2 do-release-upgrade -d


verificar versão:
lsb_release -a

sudo reboot now
rig164



# Verificar informações da placa mae processador


Para verificar todas as informações detalhadas da CPU e da placa-mãe no Ubuntu, você pode usar várias ferramentas de linha de comando. Aqui estão as mais comuns:

# lshw (para uma visão geral completa)
O lshw exibe informações detalhadas sobre o hardware, incluindo CPU e placa-mãe.

Exibindo informações completas do sistema:
bash
Copiar código
sudo lshw
Isso gera um relatório completo com informações sobre CPU, placa-mãe, memória, discos e muito mais.

Para filtrar especificamente informações da CPU:
bash
Copiar código
sudo lshw -class processor
Para filtrar especificamente informações da placa-mãe:
bash
Copiar código
sudo lshw -class motherboard




# hwinfo
nstalação do hwinfo:
bash
Copiar código
sudo apt update
sudo apt install hwinfo
Exibindo informações da CPU:
bash
Copiar código
sudo hwinfo --cpu
Exibindo informações da placa-mãe:
bash
Copiar código
sudo hwinfo --motherboard





# Verificar Configurações de Rede e Portas
Certifique-se de que as portas necessárias não estão sendo usadas por outro processo e que sua rede está funcionando corretamente.

bash
Copiar código
sudo netstat -tuln | grep -E '10102|10100'
Se você encontrar outros processos usando essas portas, pare-os ou configure o daemon para usar portas diferentes.


# Vascular portas 

Reinstale o nmap:

bash
Copiar código
sudo apt update
sudo apt install --reinstall nmap
Execute com sudo:

bash
Copiar código

sudo nmap -sV -p- 45.164.69.251

sudo dmesg | grep nmap
ou
sudo journalctl -xe | grep nmap

sudo nmap -sV -p- 45.164.69.251 > nmap_scan.log 2>&1
cat nmap_scan.log




5. Utilize Alternativas
Se o problema persistir, você pode tentar usar ferramentas alternativas para escanear portas, como masscan:

bash
Copiar código
sudo apt install masscan
masscan 45.164.69.251 -p0-65535


Para escanear as portas do seu IP público, você pode usar várias ferramentas disponíveis no Ubuntu. Aqui estão alguns métodos comuns:

1. Usando nmap
nmap é uma das ferramentas mais populares para escaneamento de redes e portas. Se ainda não estiver instalado, você pode instalá-lo com:

bash
Copiar código
sudo apt update
sudo apt install nmap
Depois de instalar, você pode escanear seu IP público usando o seguinte comando:

bash
Copiar código
nmap 45.164.69.251
Este comando realizará uma varredura básica das portas mais comuns. Para um escaneamento mais detalhado, incluindo portas abertas, serviços e suas versões, use:

bash
Copiar código
nmap -sV -p- 45.164.69.251
Aqui está o que cada opção faz:

-sV: Detecta a versão dos serviços.
-p-: Escaneia todas as portas (de 1 a 65535).
2. Usando netcat (nc)
netcat é outra ferramenta útil para verificar portas. Se ainda não estiver instalado, você pode instalá-lo com:

bash
Copiar código
sudo apt update
sudo apt install netcat
Para verificar portas específicas, você pode usar:

bash
Copiar código
nc -zv 45.164.69.251 1-65535
Aqui está o que cada opção faz:

-z: Zero-I/O mode (não envia dados, apenas escaneia).
-v: Modo verboso para mostrar informações detalhadas.


# remover temporários
sudo apt autoremove -y
sudo apt clean -y
sudo apt autoclean -y
sudo rm -rf /tmp/*

# Verificar as Sessões screen Ativas: Para visualizar as sessões ativas do screen, use:
screen -ls

# Forçar o encerramento de todas as sessões:
screen -wipe

#  Encerrar uma sessão específica pelo ID:
screen -X -S 48583.dero_integrator quit
screen -X -S  16289.dero_bridge quit
sudo screen -X -S 20911.miner quit



# Criar uma nova sessão screen: Se você ainda não tem uma sessão de screen rodando o
screen -S <nome_da_sessao>

# Encerrar o Processo que Está Usando a Porta

netstat -ano | findstr :10100
ou
sudo lsof -i :10100


- Localize o PID e encerre o processo com o comando
taskkill /PID <PID> /F
ou
sudo kill -9 34935


# noVNC
https://chatgpt.com/share/06e819d6-3d17-4e53-9c4c-7ddcea6a41ea

sudo apt install git tigervnc-standalone-server websockify -y

cd /opt
sudo git clone https://github.com/novnc/noVNC.git
cd noVNC

cd /opt/noVNC

-Execute o Websockify na porta 6080 para redirecionar para o servidor VNC:

./utils/novnc_proxy --vnc localhost:5901
ou
./utils/novnc_proxy --vnc localhost:5901 --listen 6080


- Configurar o Acesso VNC Seguro (Opcional)
vncpasswd

- firewall


sudo ufw allow 5901
sudo ufw allow 6080



# acessar via web
200.148.5.190
http://200.148.5.190:6080/vnc.html

ou
http://<server-ip>:6080/vnc.html?host=<server-ip>&port=6080

# iniciar o VNC com um xterm simples
vncserver -xstartup /usr/bin/xterm :1
nano ~/.vnc/xstartup

#!/bin/sh
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
exec /usr/bin/startxfce4

vncserver -kill :1
vncserver :1
vncserver -localhost no :1



# VNC depende de um ambiente gráfico instalado
sudo apt-get install xfce4 xfce4-goodies

modifique o arquivo ~/.vnc/xstartup para iniciar o xfce4:

#!/bin/sh
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
startxfce4 &


./utils/novnc_proxy --vnc localhost:5901 --listen 6080


# log
cat /home/wendell/.vnc/ubuntu:1.log



# repositorio jammy ubuntu 22.04
1. Faça um backup do arquivo atual sources.list
Antes de modificar o arquivo, é sempre uma boa prática fazer um backup do arquivo atual:

bash
Copiar código
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
2. Edite o arquivo sources.list
Abra o arquivo sources.list para edição com um editor de texto, como o Nano:

bash
Copiar código
sudo nano /etc/apt/sources.list
3. Adicione os repositórios oficiais do Ubuntu 22.04 (Jammy)
Aqui estão os repositórios oficiais para o Ubuntu 22.04 Jammy Jellyfish. Substitua o conteúdo do arquivo por estas linhas ou adicione-as conforme necessário:

bash
Copiar código
# Repositórios principais
deb http://archive.ubuntu.com/ubuntu/ jammy main restricted universe multiverse
deb-src http://archive.ubuntu.com/ubuntu/ jammy main restricted universe multiverse

# Repositórios de atualizações
deb http://archive.ubuntu.com/ubuntu/ jammy-updates main restricted universe multiverse
deb-src http://archive.ubuntu.com/ubuntu/ jammy-updates main restricted universe multiverse

# Repositórios de segurança
deb http://security.ubuntu.com/ubuntu jammy-security main restricted universe multiverse
deb-src http://security.ubuntu.com/ubuntu jammy-security main restricted universe multiverse

# Repositórios de backports (opcional)
deb http://archive.ubuntu.com/ubuntu/ jammy-backports main restricted universe multiverse
deb-src http://archive.ubuntu.com/ubuntu/ jammy-backports main restricted universe multiverse
4. Salve e feche o arquivo
No Nano, pressione Ctrl + O para salvar e depois Ctrl + X para sair.
5. Atualize o cache do APT
Após atualizar o sources.list, execute o comando abaixo para atualizar o cache de pacotes:

bash
Copiar código
sudo apt update
6. Verifique se tudo está correto
Depois de atualizar o cache, certifique-se de que tudo está funcionando corretamente ao tentar instalar ou atualizar pacotes.

bash
Copiar código
sudo apt upgrade
Essas etapas garantirão que o seu sistema esteja utilizando os repositórios oficiais do Ubuntu 22.04 (Jammy).





# MySQL no Ubunt
sudo apt install mysql-server

sudo systemctl enable mysql

sudo systemctl status mysql

sudo systemctl start mysql

->Conectar ao MySQL
sudo mysql -u root -p



->zabbix
mysql> create database zabbix character set utf8mb4 collate utf8mb4_bin;
mysql> create user zabbix@localhost identified by 'Dud@4321';
mysql> grant all privileges on zabbix.* to zabbix@localhost;
mysql> set global log_bin_trust_function_creators = 1;
mysql> quit;









# Como executar o mesmo comando em mais de um servidor linux ubuntu
O ChatGPT disse:
ChatGPT
Para executar o mesmo comando em múltiplos servidores Linux Ubuntu de forma eficiente, existem várias abordagens. Aqui estão algumas das mais comuns:

1. Usando ssh em um loop
Você pode usar o comando ssh para conectar-se a vários servidores e executar um comando neles. Isso pode ser feito em um loop simples dentro de um script Bash.

Exemplo:

bash
Copiar código
#!/bin/bash

# Lista de servidores
servers=("server1" "server2" "server3")

# Comando a ser executado em cada servidor
command="sudo apt update && sudo apt upgrade -y"

# Loop sobre cada servidor
for server in "${servers[@]}"
do
  echo "Executando comando em $server"
  ssh user@$server "$command"
done
Neste exemplo:

Substitua server1, server2, etc., pelos endereços IP ou nomes de host dos seus servidores.
user deve ser substituído pelo seu nome de usuário nos servidores remotos.
command é o comando que será executado em cada servidor.
2. Usando Parallel-SSH (PSSH)
O pssh é uma ferramenta que permite executar comandos em paralelo em múltiplos servidores. Você pode instalá-lo e usá-lo da seguinte maneira:

Instalação do pssh:
bash
Copiar código
sudo apt install pssh
Uso do pssh:
Crie um arquivo chamado hosts.txt contendo os endereços IP ou nomes dos servidores:

bash
Copiar código
server1
server2
server3
Execute o comando em todos os servidores da lista:

bash
Copiar código
pssh -h hosts.txt -l user -A -i "sudo apt update && sudo apt upgrade -y"
Onde:

-h hosts.txt define o arquivo com os servidores.
-l user define o nome de usuário.
-A solicita sua senha uma vez e a utiliza em todos os servidores.
-i faz com que o pssh imprima a saída dos comandos.
3. Usando Ansible
O Ansible é uma ferramenta de automação popular que facilita a execução de comandos em múltiplos servidores, especialmente para tarefas repetitivas.

Instalação do Ansible:
bash
Copiar código
sudo apt install ansible
Exemplo de uso:
Defina seus servidores no arquivo /etc/ansible/hosts ou em um arquivo de inventário personalizado:

ini
Copiar código
[meus_servidores]
server1
server2
server3
Execute um comando em todos os servidores:

bash
Copiar código
ansible meus_servidores -m shell -a "sudo apt update && sudo apt upgrade -y" -u user
Essas são algumas maneiras de executar comandos em vários servidores Ubuntu. O pssh e o Ansible são mais eficientes se você estiver gerenciando muitos servidores, enquanto o script ssh é ideal para configurações menores.







# Informacoes de hardware linux
sudo apt install inxi -y
inxi -Fxz

cat /proc/cpuinfo: Exibe informações detalhadas sobre todos os núcleos da CPU.
lscpu: Mostra informações detalhadas sobre o processador.

sudo nano /etc/hostname
rig07-147-pcware-i52400



CREATE DATABASE site2_db;
CREATE USER 'site2_user'@'localhost' IDENTIFIED BY 'senha_do_site2';
GRANT ALL PRIVILEGES ON site2_db.* TO 'site2_user'@'localhost';
FLUSH PRIVILEGES;
EXIT;


define('DB_NAME', 'site2_db');
define('DB_USER', 'site2_user');
define('DB_PASSWORD', 'senha_do_site2');
define('DB_HOST', 'localhost');



https://chatgpt.com/share/66ec5839-50f8-800b-a240-bee3886ae630



Passo 2: Remover pacotes de desktop desnecessários
Alguns pacotes comumente removidos incluem aplicativos que vêm pré-instalados, como libreoffice, thunderbird, etc. Para removê-los, use:

bash
Copiar código
sudo apt remove libreoffice* thunderbird* -y
Passo 3: Remover pacotes de interface gráfica (caso queira um servidor ou ambiente minimalista)
Se você não precisa de um ambiente gráfico (caso queira um servidor ou interface minimalista), pode remover pacotes do Ubuntu Desktop com:

bash
Copiar código
sudo apt remove ubuntu-desktop gnome-shell gdm3
Se você usa o ambiente gráfico XFCE, pode remover também:

bash
Copiar código
sudo apt remove xubuntu-desktop xfce4
Lembre-se de que remover a interface gráfica tornará o sistema acessível apenas via terminal ou SSH.

Passo 4: Limpar dependências restantes
Para garantir que pacotes órfãos e dependências não usadas sejam removidos, execute novamente:

bash
Copiar código
sudo apt autoremove -y
sudo apt autoclean



# RDP
Passos para instalação do xrdp no Ubuntu:
Atualizar o sistema: Primeiro, atualize os pacotes do sistema.

bash
Copiar código
sudo apt update && sudo apt upgrade -y
Instalar o xrdp: Instale o xrdp com o comando abaixo.

bash
Copiar código
sudo apt install xrdp -y
Iniciar o serviço xrdp: Após a instalação, inicie o serviço e ative-o para que inicie automaticamente na inicialização.

bash
Copiar código
sudo systemctl enable xrdp
sudo systemctl start xrdp
Permitir o xrdp no firewall: Se o firewall está ativo no seu sistema, você deve permitir o tráfego na porta 3389, que é a porta padrão usada pelo RDP.

bash
Copiar código
sudo ufw allow 3389/tcp
Configurar a sessão: O xrdp geralmente usa o ambiente de desktop padrão do Ubuntu. Se estiver usando o GNOME ou Xfce, o xrdp tentará iniciar esse ambiente de sessão. No entanto, para algumas versões do Ubuntu, pode ser necessário configurar o arquivo de sessão:

Crie ou edite o arquivo ~/.xsession e adicione o seguinte comando, dependendo do ambiente de desktop:

Para GNOME (Ubuntu padrão):
bash
Copiar código
echo gnome-session > ~/.xsession
Para Xfce:
bash
Copiar código
echo xfce4-session > ~/.xsession
sudo apt install xfce4 xfce4-goodies -y
Reiniciar o serviço: Após a configuração, reinicie o serviço xrdp.

bash
Copiar código
sudo systemctl restart xrdp



#### FIM RDP



sudo systemctl stop xdag_gustavo.service && sudo systemctl disable xdag_gustavo.service && sudo apt remove --purge -y nome-do-pacote && 


sudo systemctl stop haveged.service && sudo systemctl disable haveged.service && sudo apt remove --purge -y haveged && sudo systemctl stop rpcbind.service && sudo systemctl disable rpcbind.service && sudo apt remove --purge -y rpcbind && sudo systemctl stop wpa_supplicant.service && sudo systemctl disable wpa_supplicant.service && sudo apt remove --purge -y wpasupplicant && sudo apt autoremove -y




https://github.com/xmrig/xmrig/releases


# hive
Brasil
sudo apt-get install language-pack-pt

systemctl list-unit-files --type=service | grep enabled
systemctl list-units --type=service --all



sudo systemctl disable hive-console.service
sudo systemctl disable hive-netpre.service
sudo systemctl disable hive-ttyd.service
sudo systemctl disable hive-watchdog.service
sudo systemctl disable hive.service hivex.service


hive-console.service                   disabled        enabled
hive-netpre.service                    enabled         enabled
hive-ttyd.service                      enabled         enabled
hive-watchdog.service                  disabled        enabled
hive.service                           enabled         enabled
hivex.service


rm -r hive hive-config hive-drivers-pack

# usuario root
sudo adduser wendell && usermod -aG sudo wendell

sudo nano /etc/ssh/sshd_config


# Resolver erro DNS
sudo nano /etc/resolv.conf


nameserver 8.8.8.8
nameserver 8.8.4.4

# alterar senha do root
sudo -i
passwd
ou
sudo passwd wendell
sudo passwd root

sudo nano /etc/apache2/apache2.conf
ServerName localhost
sudo systemctl restart apache2


sudo chown -R www-data:www-data /var/log/apache2/
sudo chmod -R 755 /var/log/apache2/

sudo mkdir -p /var/log/apache2/
sudo chmod 755 /var/log/apache2




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
Seguir passo a passo:
- zabbix o
https://www.zabbix.com/download?zabbix=6.4&os_distribution=ubuntu&os_version=22.04&components=server_frontend_agent&db=mysql&ws=apache



lsb_release -a
wget https://repo.zabbix.com/zabbix/6.2/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.2-2%2Bubuntu22.04_all.deb
sudo dpkg -i zabbix-release_6.2-2+ubuntu22.04_all.deb

wget http://repo.zabbix.com/zabbix/3.0/debian/pool/main/z/zabbix-release/zabbix-release_3.0-2+stretch_all.deb
sudo dpkg -i zabbix-release_3.0-2+stretch_all.deb


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

apt-get install php php-pear php-cgi php-common libapache2-mod-php php-mbstring php-net-socket php-gd php-xml-util php-mysql php-bcmath -y

zabbix-apache-conf
sudo apt install apache2
sudo apt install zabbix-apache-conf

sudo systemctl enable apache2

sudo nano /etc/apache2/apache2.conf
-->ServerName localhost


sudo apachectl configtest




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
sudo apt install zabbix-frontend-php --reinstall

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
sudo nano  /etc/ssh/sshd_config
LoginGraceTime 120
PermitRootLogin prohibit-password
StrictModes yes

sudo systemctl restart ssh



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




# Passos para Iniciar o Ubuntu no Modo Servidor Sem Interface Gráfica
Mudar o Nível de Inicialização para Multi-Usuário (Modo Texto):

O Ubuntu usa o systemd para gerenciar os níveis de inicialização. O nível multi-user.target é o modo de usuário múltiplo sem GUI.

Para mudar para esse modo:

bash
Copiar código
sudo systemctl set-default multi-user.target
Isso configura o sistema para iniciar no modo texto por padrão.

Reiniciar o Sistema:

Depois de definir o novo nível de inicialização, reinicie o sistema:

bash
Copiar código
sudo reboot
Parar Manualmente o Ambiente Gráfico (Se necessário):

Se você já está em um ambiente gráfico e deseja mudar para o modo texto sem reiniciar:

bash
Copiar código
sudo systemctl isolate multi-user.target
Isso para o ambiente gráfico e muda imediatamente para o modo texto.

Desativar o Gerenciador de Display (Opcional):

Para desativar o gerenciador de display que inicia a interface gráfica, como gdm, lightdm, ou sddm:

bash
Copiar código
sudo systemctl disable gdm  # Exemplo para GDM
sudo systemctl disable lightdm  # Exemplo para LightDM
Certifique-se de substituir gdm pelo gerenciador de exibição instalado.

Verificar a Configuração:

Para verificar qual é o nível de inicialização atual padrão:

bash
Copiar código
sudo systemctl get-default
O resultado deve ser multi-user.target para confirmar que o modo texto será o padrão.

Para Restaurar o Ambiente Gráfico
Se você precisar restaurar o ambiente gráfico, simplesmente mude de volta para graphical.target:

bash
Copiar código
sudo systemctl set-default graphical.target
sudo reboot
Ou para iniciar imediatamente a GUI sem reiniciar:

bash
Copiar código
sudo systemctl isolate graphical.target
Conclusão
Com essas etapas, você pode iniciar o Ubuntu no modo servidor sem a interface gráfica e acessar apenas o terminal. Isso é ideal para servidores ou sistemas que não precisam de uma interface gráfica para operação.




Alias /site1 /var/www/site1.com/public_html
<Directory /var/www/site1.com/public_html>
    Options Indexes FollowSymLinks
    AllowOverride All
    Require all granted
</Directory>

Alias /site2 /var/www/site2.com/public_html
<Directory /var/www/site2.com/public_html>
    Options Indexes FollowSymLinks
    AllowOverride All
    Require all granted
</Directory>