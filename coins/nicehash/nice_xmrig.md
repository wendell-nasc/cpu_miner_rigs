# logs

sudo touch /var/log/start-xmrig.log && sudo chown wendell:wendell /var/log/start-xmrig.log && sudo chmod 666 /var/log/start-xmrig.log

==================================================
==================================================
==================================================

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
# exec $XMRIG_BINARY -o $XMRIG_POOL -u $XMRIG_USER -t $XMRIG_THREADS --algo=$XMRIG_ALGO --http-host 127.0.0.1 --http-port $XMRIG_HTTP_PORT --http-access-token $XMRIG_HTTP_TOKEN --http-restricted=false --donate-level=$XMRIG_DONATE_LEVEL >> $LOGFILE 2>&1

exec $XMRIG_BINARY -o $XMRIG_POOL -u $XMRIG_USER -t $XMRIG_THREADS --algo=$XMRIG_ALGO --donate-level=$XMRIG_DONATE_LEVEL >> $LOGFILE 2>&1

sudo chmod +x /etc/systemd/system/start-xmrig.sh


==================================================
==================================================
==================================================

# xmrig.service
sudo nano /etc/systemd/system/xmrig.service

[Unit]
Description=Start XMRig Miner
After=network.target

[Service]
ExecStart=/etc/systemd/system/start-xmrig.sh
Restart=always
#User=wendell
StandardOutput=syslog
StandardError=syslog
SyslogIdentifier=xmrig
Nice=10
LimitNOFILE=4096

[Install]
WantedBy=multi-user.target




==================================================
==================================================
==================================================

sudo screen -r

sudo systemctl disable deroluna.service && sudo systemctl stop deroluna.service && sudo systemctl daemon-reload && sudo systemctl enable xmrig.service && sudo systemctl start xmrig.service && sudo systemctl status xmrig.service

sudo tail -f /var/log/start-xmrig.log

sudo journalctl -f -u xmrig.service

sudo reboot now

==================================================
==================================================
==================================================
# outros

--algo=randomx --coin=XMR  --threads=$(nproc) --donate-level 1 
--http-port 37329 
--http-access-token auth 
--http-host 127.0.0.1 
--http-no-restricted
