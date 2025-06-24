# Executar 

sudo systemctl stop deroluna.service &&  sudo systemctl stop xmrig.service && sudo systemctl disable deroluna.service && sudo systemctl disable xmrig.service

sudo systemctl status dero-bridge.service
sudo systemctl stop deroluna.service &&  sudo systemctl stop xmrig.service
sudo systemctl disable deroluna.service && sudo systemctl disable xmrig.service

# log
sudo touch /var/log/start-scash.log && sudo chown wendell:wendell /var/log/start-scash.log && sudo chmod 666 /var/log/start-scash.log



# script
sudo nano /etc/systemd/system/start-scash.sh



=====


#!/bin/bash

# Definir o arquivo de log
LOGFILE="/var/log/start-scash.log"

# Variáveis para o SRBMiner Multi
SCASH_BINARY="/home/wendell/scash/SRBMiner-Multi-2-6-5/SRBMiner-MULTI"
SCASH_POOL="stratum-na.rplant.xyz:7019"
SCASH_WALLET="scash1qvv3wfql4lxy36mkpgx3032nm4pvqmlq00lye6u"

# Iniciar o minerador SRBMiner Multi para o algoritmo RandomSCash
exec $SCASH_BINARY --disable-gpu --algorithm randomscash --pool $SCASH_POOL --wallet "$SCASH_WALLET.$(hostname)" --donate-level 1 >> $LOGFILE 2>&1

====

sudo chmod +x /etc/systemd/system/start-scash.sh


# deroluna.service

sudo nano /etc/systemd/system/scash.service


==

[Unit]
Description=Start Scash Miner
After=network.target

[Service]
ExecStart=/etc/systemd/system/start-scash.sh
Restart=always
RestartSec=5

[Install]
WantedBy=multi-user.target



===

sudo systemctl daemon-reload 
sudo systemctl enable scash.service && sudo systemctl start scash.service
sudo systemctl status scash.service
sudo systemctl stop scash.service

sudo tail -f /var/log/start-scash.log

sudo journalctl -f -u scash.service