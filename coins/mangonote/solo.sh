Configurar o json XMRIG
sudo nano /opt/xmrig/config.json

{
    "autosave": true,
    "cpu": {
        "enabled": true,
        "huge-pages": true,                // Ativa o uso de páginas grandes para melhor desempenho
        "hw-aes": true,                    // Ativa HW AES, se suportado pelo seu processador (melhora o desempenho em algoritmos que o utilizam)
        "priority": 5,                     // Aumenta a prioridade do minerador (0 a 10, onde 10 é a mais alta)
        "memory-pool": true,               // Ativa o pool de memória para melhorar a eficiência
        "max-threads-hint": 100,           // Ajuste baseado no número de threads disponíveis
        "asm": true,                       // Ativa as instruções ASM para melhor desempenho
        "argon2-impl": null,               // Deixe como null a menos que você tenha uma implementação específica
        "astrobwt-max-size": 550,          // Tamanho máximo do Astrobwt, mantenha ou ajuste conforme necessário
        "astrobwt-avx2": true,             // Habilite AVX2 se seu CPU suportar, para melhorar o desempenho no Astrobwt
        "cn/0": false,                     // Normalmente não é necessário ativar
        "cn-lite/0": false,                // Normalmente não é necessário ativar
        "1gb-pages": true                   // Ativa suporte a 1GB de páginas, se suportado pelo seu sistema
    },
    "http": {
        "enabled": true,
        "host": "127.0.0.1",
        "port": 37329,
        "access-token": "auth",
        "restricted": false
    }
}

==============LOGS

sudo touch /var/log/start-xmrig-mangonote.log
sudo chown wendell:wendell /var/log/start-xmrig-mangonote.log
sudo chmod 666 /var/log/start-xmrig-mangonote.log
sudo touch /var/log/start-xmrig-mangonote.log && sudo chown wendell:wendell /var/log/start-xmrig-mangonote.log && sudo chmod 666 /var/log/start-xmrig-mangonote.log

sudo touch /var/log/start-deroluna-mangonote.log
sudo chown wendell:wendell /var/log/start-deroluna-mangonote.log
sudo chmod 666 /var/log/start-deroluna-mangonote.log
sudo touch /var/log/start-deroluna-mangonote.log && sudo chown wendell:wendell /var/log/start-deroluna-mangonote.log && sudo chmod 666 /var/log/start-deroluna-mangonote.log




====

sudo nano /etc/systemd/system/start-mangonote.sh


#!/bin/bash

# Definir arquivos de log
XMRIG_LOGFILE="/var/log/start-xmrig-mangonote.log"
DEROLUNA_LOGFILE="/var/log/start-deroluna-mangonote.log"

# Garantir que os arquivos de log existam e tenham permissões adequadas
touch $XMRIG_LOGFILE
chmod 644 $XMRIG_LOGFILE
touch $DEROLUNA_LOGFILE
chmod 644 $DEROLUNA_LOGFILE

# Variáveis para o XMRig
XMRIG_BINARY="/opt/xmrig/xmrig"
XMRIG_POOL="randomx.rplant.xyz:7020"
XMRIG_USER="amyKgyh7fnCXbfugdhpoQ7AGeQKTGc3bDQRU5h63cq6SVTzHP8or5GPbYzaVoP2AQi2Ngdx8KHutfV2K1sRJTrQg9jaVSZkfPy.$(hostname)"
XMRIG_ALGO="randomx"
XMRIG_THREADS=$(nproc) # Define o número de threads baseado no número de CPUs disponíveis
XMRIG_HTTP_PORT="37329"
XMRIG_HTTP_TOKEN="auth"
XMRIG_DONATE_LEVEL="1" # Definir nível de doação para 1%
CONFIG="/opt/xmrig/config.json"

# Iniciar o minerador XMRig com as configurações específicas
echo "Iniciando XMRig Miner..." >> $XMRIG_LOGFILE
$XMRIG_BINARY -o $XMRIG_POOL -u $XMRIG_USER -t $XMRIG_THREADS --algo=$XMRIG_ALGO  --donate-level=$XMRIG_DONATE_LEVEL --config=$CONFIG >> $XMRIG_LOGFILE 2>&1 &



# Variáveis para o Deroluna Miner
DEROLUNA_BINARY="/home/wendell/dero_linux_amd64/deroluna-miner"
DEROLUNA_POOL="derosolo.bernacripto.com.br:10100"
DEROLUNA_WALLET="dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z"
DEROLUNA_THREADS=$(nproc)

# Iniciar o minerador Deroluna
echo "Iniciando Deroluna Miner..." >> $DEROLUNA_LOGFILE
$DEROLUNA_BINARY --xmrig -d $DEROLUNA_POOL -w $DEROLUNA_WALLET -t $DEROLUNA_THREADS >> $DEROLUNA_LOGFILE 2>&1 &


# Esperar os processos em segundo plano
wait

echo "Mineradores iniciados."





======================


sudo chmod +x /etc/systemd/system/start-mangonote.sh && sudo nano /etc/systemd/system/mangonote.service



[Unit]
Description=Start XMRig and Deroluna Miners
After=network.target

[Service]
ExecStart=/etc/systemd/system/start-mangonote.sh
Restart=always
#User=wendell  # Descomente e ajuste conforme necessário
SyslogIdentifier=miners
Nice=10
LimitNOFILE=4096

[Install]
WantedBy=multi-user.target




sudo systemctl disable deroluna.service && sudo systemctl stop deroluna.service && sudo systemctl daemon-reload && sudo systemctl enable mangonote.service &&  sudo systemctl stop mangonote.service && sudo systemctl restart mangonote.service && sudo systemctl status mangonote.service && sudo tail -f /var/log/start-deroluna-mangonote.log
sudo systemctl daemon-reload && sudo systemctl enable mangonote.service &&  sudo systemctl stop mangonote.service && sudo systemctl restart mangonote.service && sudo systemctl status mangonote.service && sudo tail -f /var/log/start-deroluna-mangonote.log
sudo tail -f /var/log/start-deroluna-mangonote.log




sudo tail -f /var/log/start-xmrig-mangonote.log 
sudo tail -f /var/log/start-deroluna-mangonote.log


sudo journalctl -f -u mangonote.service



sudo systemctl stop mangonote.service

screen -S deroluna-miner /home/wendell/dero_linux_amd64/deroluna-miner --xmrig -d derosolo.bernacripto.com.br:10100 -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -t $(nproc)