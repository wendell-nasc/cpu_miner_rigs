


### XMRIG CORRIGIDO
screen -S xmrig-miner /opt/xmrig/xmrig -o stratum+tcp://randomxmonero.auto.nicehash.com:9200 -u NHbQdkTWYaaCs85LgLChnktWpG9bxKnMU72s.arthur  --threads=$(nproc)  --algo=randomx --coin=XMR  



./dero-miner-linux-amd64 --integrator-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z --daemon-rpc-address=192.168.15.161:10100 





# Iniciar o minerador XMRig
exec $XMRIG_CBINARY -o $XMRIG_POOL -u $XMRIG_USER --algo=$XMRIG_ALGO --donate-level 1 \
    --http-port $XMRIG_HTTP_PORT --http-access-token $XMRIG_HTTP_TOKEN --http-host 127.0.0.1 \
    --http-no-restricted --threads=$(nproc)




sudo lsof -i :10100
sudo kill -p PID ???

casa pai
screen -S dero_integrator_ok /home/wendell/dero_linux_amd64/derod-linux-amd64 --integrator-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z --rpc-bind=192.168.1.130:10102

screen -S dero_integrator /home/wendell/dero_linux_amd64/derod-linux-amd64 --integrator-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z --node-tag=WendellCripto


casa aqui
$screen -S dero_integrator /home/wendell/dero_linux_amd64/derod-linux-amd64 --integrator-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z --rpc-bind=192.168.15.161:10102

corrigido !!!!!!!!!!!!!!!!!!
screen -S dero_integrator /home/wendell/dero_linux_amd64/derod-linux-amd64 --integrator-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z --rpc-bind=0.0.0.0:10102 --p2p-bind=0.0.0.0:52672 --node-tag=WendellCripto


sudo tail -f /var/log/start-deroluna.log






############SERVICOS #######################

sudo touch /var/log/dero-bridge.log
sudo chown wendell:wendell /var/log/dero-bridge.log
sudo chmod 666 /var/log/dero-bridge.log
sudo touch /var/log/dero-bridge.log && sudo chown wendell:wendell /var/log/dero-bridge.log && sudo chmod 666 /var/log/dero-bridge.log

sudo touch /var/log/start-xmrig.log 
sudo chown wendell:wendell /var/log/start-xmrig.log
sudo chmod 666 /var/log/start-xmrig.log
sudo touch /var/log/start-xmrig.log && sudo chown wendell:wendell /var/log/start-xmrig.log && sudo chmod 666 /var/log/start-xmrig.log



sudo touch /var/log/start-deroluna.log
sudo chown wendell:wendell /var/log/start-deroluna.log
sudo chmod 666 /var/log/start-deroluna.log
sudo touch /var/log/start-deroluna.log && sudo chown wendell:wendell /var/log/start-deroluna.log && sudo chmod 666 /var/log/start-deroluna.log



sudo touch /var/log/start-derohansen.log
sudo chown wendell:wendell /var/log/start-derohansen.log
sudo chmod 666 /var/log/start-derohansen.log
sudo touch /var/log/start-derohansen.log && sudo chown wendell:wendell /var/log/start-derohansen.log && sudo chmod 666 /var/log/start-derohansen.log



#############################################
#############################################
 # start-deroluna

sudo nano /etc/systemd/system/start-deroluna.sh

#!/bin/bash

# Definir o arquivo de log
LOGFILE="/var/log/start-deroluna.log"

# Variáveis para o Deroluna Miner
DEROLUNA_BINARY="/home/wendell/dero_linux_amd64/deroluna-miner"
#DEROLUNA_POOL="derosolo.bernacripto.com.br:10100"
DEROLUNA_POOL="192.168.1.158:10100"
DEROLUNA_WALLET="dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z"
DEROLUNA_THREADS=$(nproc)

# Iniciar o minerador Deroluna
#exec $DEROLUNA_BINARY --xmrig -d $DEROLUNA_POOL -w $DEROLUNA_WALLET -t $DEROLUNA_THREADS >> $LOGFILE 2>&1
exec $DEROLUNA_BINARY -d $DEROLUNA_POOL -w $DEROLUNA_WALLET -t $DEROLUNA_THREADS >> $LOGFILE 2>&1


-hansen
sudo systemctl disable derohansen.service  && sudo systemctl stop derohansen.service && sudo systemctl daemon-reload && sudo systemctl enable deroluna.service && sudo systemctl restart deroluna.service && sudo systemctl status deroluna.service

sudo systemctl daemon-reload && sudo systemctl restart deroluna.service && sudo systemctl status deroluna.service

sudo systemctl status deroluna.service

sudo tail -f /var/log/start-deroluna.log


sudo chmod +x /etc/systemd/system/start-deroluna.sh



#############################################
#############################################

# start-xmrig.sh


sudo nano /etc/systemd/system/start-xmrig.sh

#!/bin/bash

# Definir o arquivo de log
LOGFILE="/var/log/start-xmrig.log"

# Garantir que o arquivo de log exista e tenha permissões adequadas
touch $LOGFILE
chmod 644 $LOGFILE

# Variáveis para o XMRig
XMRIG_BINARY="/opt/xmrig/xmrig"
XMRIG_POOL="stratum+tcp://randomxmonero.auto.nicehash.com:9200"
XMRIG_USER="NHbQdkTWYaaCs85LgLChnktWpG9bxKnMU72s.$(hostname)"
XMRIG_ALGO="randomx"
XMRIG_THREADS=$(nproc) # Define o número de threads baseado no número de CPUs disponíveis
XMRIG_HTTP_PORT="37329"
XMRIG_HTTP_TOKEN="auth"
XMRIG_DONATE_LEVEL="1" # Definir nível de doação para 1%

# Iniciar o minerador XMRig com as configurações específicas
exec $XMRIG_BINARY -o $XMRIG_POOL -u $XMRIG_USER -t $XMRIG_THREADS --algo=$XMRIG_ALGO --http-host 127.0.0.1 --http-port $XMRIG_HTTP_PORT --http-access-token $XMRIG_HTTP_TOKEN --http-restricted=false --donate-level=$XMRIG_DONATE_LEVEL >> $LOGFILE 2>&1

sudo systemctl enable deroluna.service && sudo systemctl restart deroluna.service && sudo systemctl daemon-reload && sudo systemctl enable xmrig.service && sudo systemctl restart xmrig.service && sudo systemctl status xmrig.service



sudo tail -f /var/log/start-deroluna.log



sudo chmod +x /etc/systemd/system/start-xmrig.sh

##############################
#dero-bridge.sh
sudo nano /etc/systemd/system/dero-bridge.sh

#!/bin/bash

# Definir o arquivo de log
LOGFILE="/var/log/dero-bridge.log"

# Remover a pasta mainnet se ela existir (com permissões elevadas)
if [ -d "/home/wendell/dero_linux_amd64/mainnet" ]; then
    echo "Removing /home/wendell/dero_linux_amd64/mainnet directory..."
    sudo rm -rf /home/wendell/dero_linux_amd64/mainnet
fi

# Garantir permissões corretas para a pasta dero_linux_amd64
sudo mkdir -p /home/wendell/dero_linux_amd64/mainnet
sudo chmod -R 755 /home/wendell/dero_linux_amd64

# Iniciar o minerador Deroluna com o comando fornecido e redirecionar a saída para o arquivo de log
sudo /home/wendell/dero_linux_amd64/derod-linux-amd64 --fastsync >> $LOGFILE 2>&1


sudo chmod +x /etc/systemd/system/dero-bridge.sh






#############################################
#############################################

#dero-bridge.service

sudo nano /etc/systemd/system/dero-bridge.service



[Unit]

Description=Deroluna Bridge Service

After=network.target


[Service]

ExecStart=/etc/systemd/system/dero-bridge.sh

Restart=always

RestartSec=10

#User=wendell
WorkingDirectory=/home/wendell/dero_linux_amd64
StandardOutput=append:/var/log/dero-bridge.log
StandardError=append:/var/log/dero-bridge.log
SyslogIdentifier=dero-bridge

[Install]
WantedBy=multi-user.target



sudo systemctl enable dero-bridge.service && sudo systemctl start dero-bridge.service && sudo systemctl status dero-bridge.service
sudo tail -f /var/log/dero-bridge.log



#############################################
#############################################
 # start-deroluna HANSEN

sudo mv hansen33s-dero-miner-linux-amd64 dero_linux_amd64
sudo nano /etc/systemd/system/start-derohansen.sh

#!/bin/bash

# Definir o arquivo de log
LOGFILE="/var/log/start-derohansen.log"

# Variáveis para o Deroluna Miner
DEROLUNA_BINARY="/home/wendell/dero_linux_amd64/hansen33s-dero-miner-linux-amd64"
#DEROLUNA_POOL="derosolo.bernacripto.com.br:10100"
DEROLUNA_POOL="192.168.1.130:10100"
DEROLUNA_WALLET="dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z"
DEROLUNA_THREADS=$(nproc)

# Iniciar o minerador Deroluna
#exec $DEROLUNA_BINARY -daemon-rpc-address $DEROLUNA_POOL -wallet-address $DEROLUNA_WALLET -workers $DEROLUNA_THREADS -turbo >> $LOGFILE 2>&1
exec $DEROLUNA_BINARY -daemon-rpc-address $DEROLUNA_POOL -wallet-address $DEROLUNA_WALLET -workers $DEROLUNA_THREADS -turbo >> $LOGFILE 2>&1



sudo chmod +x /etc/systemd/system/start-derohansen.sh



#############################################
#############################################
# derohansen.service

sudo nano /etc/systemd/system/derohansen.service

[Unit]
Description=Start derohansen Miner
After=network.target

[Service]
ExecStart=/etc/systemd/system/start-derohansen.sh
#User=wendell
Restart=on-failure
RestartSec=10
StandardOutput=journal
StandardError=journal

[Install]
WantedBy=multi-user.target


sudo touch /var/log/start-derohansen.log && sudo chown wendell:wendell /var/log/start-derohansen.log && sudo chmod 666 /var/log/start-derohansen.log
sudo systemctl disable xmrig.service && sudo systemctl stop xmrig.service && sudo systemctl disable deroluna.service && sudo systemctl stop deroluna.service && sudo systemctl daemon-reload && sudo systemctl enable derohansen.service && sudo systemctl start derohansen.service && sudo systemctl status derohansen.service
sudo tail -f /var/log/start-derohansen.log

sudo systemctl status derohansen.service
sudo systemctl status xmrig.service
sudo systemctl status deroluna.service
sudo systemctl status dero-bridge.service


sudo tail -f /var/log/start-derohansen.log
sudo tail -f /var/log/dero-bridge.log



dero-bridge
#############################################
#############################################



#############################################
#############################################
# deroluna.service

sudo nano /etc/systemd/system/deroluna.service

[Unit]
Description=Start Deroluna Miner
After=network.target

[Service]
ExecStart=/etc/systemd/system/start-deroluna.sh
#User=wendell
Restart=on-failure
RestartSec=10
StandardOutput=journal
StandardError=journal

[Install]
WantedBy=multi-user.target


#############################################
#############################################
# xmrig.service
sudo nano /etc/systemd/system/xmrig.service

[Unit]
Description=Start XMRig Miner
After=network.target

[Service]
ExecStart=/etc/systemd/system/start-xmrig.sh
Restart=always
#User=wendell
StandardOutput=journal
StandardError=journal
SyslogIdentifier=xmrig
Nice=10
LimitNOFILE=4096

[Install]
WantedBy=multi-user.target

ATENCAO !!!! 

Para verificar os logs utilizar o comando:

sudo tail -f /var/log/dero-bridge.log
 
sudo tail -f /var/log/start-deroluna.log



sudo screen -ls

sudo systemctl daemon-reload
sudo systemctl enable xmrig.service

sudo systemctl enable derohansen.service
sudo systemctl enable deroluna.service
sudo systemctl enable dero-bridge.service

sudo systemctl start derohansen.service
sudo systemctl start xmrig.service
sudo systemctl start deroluna.service

sudo systemctl stop xmrig.service´
sudo systemctl disable xmrig.service

sudo tail -f /var/log/start-deroluna.log
sudo tail -f /var/log/xmrig.log


sudo systemctl restart xmrig.service
sudo nano /etc/systemd/system/start-deroluna.sh
exec $DEROLUNA_BINARY -d $DEROLUNA_POOL -w $DEROLUNA_WALLET -t $DEROLUNA_THREADS >> $LOGFILE 2>&1
sudo systemctl daemon-reload
sudo systemctl stop deroluna.service

sudo tail -f /var/log/dero-bridge.log
sudo tail -f /var/log/start-deroluna.log
sudo tail -f /var/log/start-xmrig.log






==========================================
Recarregue o systemd para reconhecer os novos serviços:

bash
Copiar código
sudo systemctl daemon-reload
Habilite os serviços para iniciar na inicialização:

bash
Copiar código
sudo systemctl status deroluna.service
sudo systemctl enable xmrig.service
sudo systemctl stop dero-bridge.service

Inicie os serviços manualmente (para testar):

bash
Copiar código
sudo systemctl status deroluna.service
sudo systemctl restart xmrig.service
sudo systemctl restart dero-bridge.service

Verifique o status dos serviços para garantir que estão funcionando:

bash
Copiar código
sudo systemctl stop deroluna.service
sudo systemctl stop xmrig.service
sudo systemctl stop dero-bridge.service


sudo systemctl restart deroluna.service
sudo systemctl restart xmrig.service
sudo systemctl restart dero-bridge.service


sudo tail -f /var/log/dero-bridge.log
sudo tail -f /var/log/start-xmrig.log
sudo tail -f /var/log/start-deroluna.log




sudo systemctl status deroluna.service
sudo systemctl status xmrig.service
sudo systemctl status dero-bridge.service



4. Verificação
Você pode verificar os logs dos serviços para depurar qualquer problema:

bash
Copiar código
sudo journalctl -f -u dero-bridge.service
sudo journalctl -f -u deroluna.service
sudo journalctl -f -u xmrig.service


sudo systemctl stop deroluna.service

./dero-miner-linux-amd64 --integrator-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z 


==========================================
==========================================
==========================================
==========================================
==========================================
==========================================













cp /home/wendell/dero_xmrig/start-miners.sh /etc/systemd/system/start-miners.sh



sudo nano /etc/systemd/system/miners.service

sudo journalctl -f -u miners.service

sudo journalctl -f -u start-miners.sh

/bin/bash /home/wendell/dero_xmrig/start-miners.sh






-comando 1
rm -r /home/wendell/dero_linux_amd64/derod-linux-amd64/mainnet -f

-comando 2
screen -S dero_bridge /home/wendell/dero_linux_amd64/derod-linux-amd64 --fastsync

- comando 3

screen -S dero_integrator /home/wendell/dero_linux_amd64/derod-linux-amd64 --integrator-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z --rpc-bind=192.168.15.161:10102
- comando 4
screen -S deroluna-miner ./deroluna-miner -d 192.168.15.161:10100  -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -t $(nproc)


Example Mainnet: ./dero-miner-linux-amd64 --wallet-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z --daemon-rpc-address=192.168.15.161:10100
Example Testnet: ./dero-miner-linux-amd64 --wallet-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z --daemon-rpc-address=127.0.0.1:40402 


===>Arquivo: dero_luna_xmrig.sh

#!/bin/bash

# Caminhos para os executáveis
XMRIG_PATH="/opt/xmrig/xmrig"
DERO_LUNA_PATH="/home/wendell/dero_linux_amd64/deroluna-miner"

# Configurações para o xmrig HTTP
HTTP_PORT=37329
HTTP_ACCESS_TOKEN="auth"

# Endereço do pool e carteira para xmrig
XMRIG_POOL="stratum+tcp://randomxmonero.auto.nicehash.com:9200"
XMRIG_USER="NHbQdkTWYaaCs85LgLChnktWpG9bxKnMU72s.arthur"

# Endereço do pool e carteira para deroluna-miner
DERO_POOL="derosolo.bernacripto.com.br:10100"
DERO_WALLET="dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z"

# Número de threads para xmrig e deroluna-miner (usar todos os núcleos disponíveis)
THREADS=$(nproc)

# Verificar se o xmrig existe
if [ ! -f "$XMRIG_PATH" ]; then
    echo "Erro: O arquivo xmrig não foi encontrado no caminho $XMRIG_PATH" | tee -a error.log
    exit 1
fi

# Verificar se o deroluna-miner existe
if [ ! -f "$DERO_LUNA_PATH" ]; then
    echo "Erro: O arquivo deroluna-miner não foi encontrado no caminho $DERO_LUNA_PATH" | tee -a error.log
    exit 1
fi

# Iniciar o deroluna-miner em uma nova tela
echo "Iniciando deroluna-miner..." | tee -a start.log
screen -S deroluna-miner -dm $DERO_LUNA_PATH --xmrig -d $DERO_POOL -w $DERO_WALLET -t $THREADS 2>> error.log

# Iniciar o xmrig em uma nova tela com configuração HTTP
echo "Iniciando xmrig..." | tee -a start.log
screen -S xmr_nicehash -dm $XMRIG_PATH -o $XMRIG_POOL -u $XMRIG_USER -t $THREADS --algo=randomx --http-port $HTTP_PORT --http-no-restricted --http-access-token $HTTP_ACCESS_TOKEN --donate-level 1 2>> error.log

# Mensagem final
echo "Ambos os mineradores foram iniciados nas telas 'deroluna-miner' e 'xmr_nicehash'." | tee -a start.log







arquivo: config.json
/opt/xmrig/config.json


{
    "http": {
        "enabled": true,
        "host": "127.0.0.1",
        "port": 37329,
        "access-token": "auth",
        "restricted": false
    }
}





# Permissao de logs
Passo 1: Criar ou ajustar as permissões do arquivo de log
Execute os seguintes comandos no terminal:

bash
Copiar código
sudo touch /var/log/start-xmrig.log  # Cria o arquivo se ele não existir
sudo chown wendell:wendell /var/log/start-xmrig.log  # Ajusta o proprietário para 'root'
sudo chmod 666 /var/log/start-xmrig.log  # Permite que qualquer usuário leia/escreva no arquivo de log