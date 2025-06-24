ps aux | grep deroluna-miner
sudo kill 2785 2733 2427 

lsb_release -a

-Corrigir erros
sudo dpkg --configure -a

#Parar servico antigo
sudo systemctl disable xdag.service &&  sudo systemctl stop xdag.service 

sudo apt install ntpdate  && sudo ntpdate  pool.ntp.org

Configurar o json XMRIG
sudo mkdir /opt/xmrig/
sudo rm -r /opt/xmrig/config.json
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

# INSTALAR XMRIG FORK PARA XDAG
Verificar release
lsb_release -a




🔹HiveOS (from 'xmrig-new/xdag/6.19.3' package)
# usuario root
sudo adduser wendell
sudo usermod -aG sudo wendell
sudo passwd wendell


sudo mkdir /home/wendell  

#
sudo rm -r /home/wendell/xdag
sudo mkdir /home/wendell/xdag  && cd /home/wendell/xdag/ && sudo wget https://github.com/FSOL-XDAG/xmrig-4-xdag/releases/download/v.6.20.0/x4x-6.20.0-hive-ubuntu_18.04-x64.tar.gz && tar -xvf x4x-6.20.0-hive-ubuntu_18.04-x64.tar.gz 
cd /home/wendell && sudo wget https://github.com/deroproject/derohe/releases/latest/download/dero_linux_amd64.tar.gz && sudo tar xvzf dero_linux_amd64.tar.gz && cd dero_linux_amd64 && sudo wget https://github.com/DeroLuna/dero-miner/releases/download/v1.13-beta/deroluna-miner-linux-amd64.tar.gz && sudo tar -xvf deroluna-miner-linux-amd64.tar.gz

#xmrig xda 20.04
sudo mkdir /home/wendell/xdag && cd /home/wendell/xdag/ && sudo wget https://github.com/FSOL-XDAG/xmrig-4-xdag/releases/download/v.6.20.0/x4x-6.20.0-linux-ubuntu_20.04-x64.tar.gz && sudo tar -xvf x4x-6.20.0-linux-ubuntu_20.04-x64.tar.gz 

🔹Ubuntu 18.04
sudo mkdir /home/wendell/xdag && cd /home/wendell/xdag/ && sudo wget https://github.com/FSOL-XDAG/xmrig-4-xdag/releases/download/v6.19.3/x4x-6.19.3-hive-ubuntu_18.04-x64.tar.gz && sudo tar -xvf x4x-6.19.3-hive-ubuntu_18.04-x64.tar.gz

🔹Ubuntu 20.04
mkdir temp_x4x && cd temp_x4x/ && wget https://github.com/FSOL-XDAG/xmrig-4-xdag/releases/download/v.6.20.0/x4x-6.20.0-linux-ubuntu_20.04-x64.tar.gz && tar -xvf x4x-6.20.0-linux-ubuntu_20.04-x64.tar.gz && cp xmrig-4-xdag/xmrig-4-xdag .. && cd .. && rm -r temp_x4x
sudo mkdir /home/wendell/xdag && cd /home/wendell/xdag/ && sudo wget https://github.com/FSOL-XDAG/xmrig-4-xdag/releases/download/v.6.20.0/x4x-6.20.0-linux-ubuntu_20.04-x64.tar.gz && sudo tar -xvf x4x-6.20.0-linux-ubuntu_20.04-x64.tar.gz 


🔹Ubuntu 22.04
sudo mkdir /home/wendell/xdag && cd /home/wendell/xdag/ && sudo wget https://github.com/FSOL-XDAG/xmrig-4-xdag/releases/download/v.6.20.0/x4x-6.20.0-linux-ubuntu_22.04-x64.tar.gz && sudo tar -xvf x4x-6.20.0-linux-ubuntu_22.04-x64.tar.gz 



==============LOGS

sudo touch /var/log/start-xmrig-xdag_gustavo.log
sudo chown wendell:wendell /var/log/start-xmrig-xdag_gustavo.log
sudo chmod 666 /var/log/start-xmrig-xdag_gustavo.log
sudo touch /var/log/start-xmrig-xdag_gustavo.log && sudo chown wendell:wendell /var/log/start-xmrig-xdag_gustavo.log && sudo chmod 666 /var/log/start-xmrig-xdag_gustavo.log

sudo touch /var/log/start-deroluna-xdag_gustavo.log
sudo chown wendell:wendell /var/log/start-deroluna-xdag_gustavo.log
sudo chmod 666 /var/log/start-deroluna-xdag_gustavo.log
sudo touch /var/log/start-deroluna-xdag_gustavo.log && sudo chown wendell:wendell /var/log/start-deroluna-xdag_gustavo.log && sudo chmod 666 /var/log/start-deroluna-xdag_gustavo.log


sudo touch /var/log/start-deroluna-errors.log
sudo chown wendell:wendell /var/log/start-deroluna-errors.log
sudo chmod 666 /var/log/start-deroluna-errors.log
sudo touch /var/log/start-deroluna-errors.log @ sudo chown wendell:wendell /var/log/start-deroluna-errors.log @ sudo chmod 666 /var/log/start-deroluna-errors.log


#compleTO [ usar esse !!!]
sudo touch /var/log/start-xmrig-xdag_gustavo.log && sudo chown wendell:wendell /var/log/start-xmrig-xdag_gustavo.log && sudo chmod 666 /var/log/start-xmrig-xdag_gustavo.log && sudo touch /var/log/start-deroluna-xdag_gustavo.log && sudo chown wendell:wendell /var/log/start-deroluna-xdag_gustavo.log && sudo chmod 666 /var/log/start-deroluna-xdag_gustavo.log && sudo touch /var/log/start-deroluna-errors.log @ sudo chown wendell:wendell /var/log/start-deroluna-errors.log @ sudo chmod 666 /var/log/start-deroluna-errors.log

====


#sudo nano /etc/systemd/system/start-xdag_gustavo.sh sudo chmod +x /etc/systemd/system/start-xdag_gustavo.sh


#!/bin/bash

# Definir arquivos de log
XMRIG_LOGFILE="/var/log/start-xmrig-xdag_gustavo.log"
DEROLUNA_LOGFILE="/var/log/start-deroluna-xdag_gustavo.log"
ENV_LOGFILE="/var/log/start-env.log"

# Garantir que os arquivos de log existam e tenham permissões adequadas
for logfile in "$XMRIG_LOGFILE" "$DEROLUNA_LOGFILE" "$ENV_LOGFILE"; do
    touch "$logfile"
    chmod 644 "$logfile"
done

# Exportar o PATH para garantir o ambiente adequado
export PATH="$PATH"

# Log das variáveis de ambiente
env >> "$ENV_LOGFILE"

# Variáveis para o XMRig
XMRIG_BINARY="/home/wendell/xdag/xmrig-4-xdag/xmrig-4-xdag"
XMRIG_POOL="stratum.xdag.org:23656"
XMRIG_USER="Dzdbr5d8PVafQwvEkEwfNde7mFKNDaDSv.$(hostname)"
XMRIG_ALGO="rx/xdag"
XMRIG_THREADS=$(nproc)
XMRIG_HTTP_PORT="37329"
XMRIG_HTTP_TOKEN="auth"
XMRIG_DONATE_LEVEL="1"
CONFIG="/opt/xmrig/config.json"



#!/bin/bash

# Definir arquivos de log
DEROLUNA_LOGFILE="/var/log/start-deroluna-hansen.log"
ENV_LOGFILE="/var/log/start-env.log"

# Garantir que os arquivos de log existam e tenham permissões adequadas
for logfile in "$DEROLUNA_LOGFILE" "$ENV_LOGFILE"; do
    touch "$logfile"
    chmod 644 "$logfile"
done

# Exportar o PATH para garantir o ambiente adequado
export PATH="$PATH"

# Log das variáveis de ambiente
env >> "$ENV_LOGFILE"

# Variáveis para o Deroluna Miner
DEROLUNA_BINARY="/home/wendell/dero_linux_amd64/hansen33s-dero-miner-linux-amd64"
# DEROLUNA_POOL="dero-node-gustavogerman.mysrv.cloud:10100"
DEROLUNA_POOL="192.168.1.168:10100"
DEROLUNA_WALLET="dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z"
DEROLUNA_THREADS=$(nproc)

# Verificar se o minerador existe, caso contrário, baixar e extrair
if [ ! -f "$DEROLUNA_BINARY" ]; then
    echo "Minerador não encontrado. Baixando e extraindo..." >> "$DEROLUNA_LOGFILE"
    wget https://github.com/Hansen333/Hansen33-s-DERO-Miner/releases/latest/download/hansen33s-dero-miner-linux-amd64.tar.gz -P /home/wendell/dero_linux_amd64
    sudo tar -xvf /home/wendell/dero_linux_amd64/hansen33s-dero-miner-linux-amd64.tar.gz -C /home/wendell/dero_linux_amd64
    echo "Minerador baixado e extraído." >> "$DEROLUNA_LOGFILE"
else
    echo "Minerador encontrado. Prosseguindo..." >> "$DEROLUNA_LOGFILE"
fi

# Iniciar o minerador Deroluna
echo "Iniciando Deroluna Miner..." >> "$DEROLUNA_LOGFILE"
"$DEROLUNA_BINARY" -daemon-rpc-address "$DEROLUNA_POOL" -wallet-address "$DEROLUNA_WALLET" -mining-threads "$DEROLUNA_THREADS" -turbo >> "$DEROLUNA_LOGFILE" 2>> /var/log/start-deroluna-errors.log &

# Esperar os processos em segundo plano
wait

echo "Mineradores iniciados."


# sudo chmod +x /home/wendell/hansen/hansen.sh && sudo nano /etc/systemd/system/dero_hansen.service


#!/bin/bash

# Definir arquivos de log
DEROLUNA_LOGFILE="/var/log/start-deroluna-hansen.log"
ENV_LOGFILE="/var/log/start-env.log"

# Garantir que os arquivos de log existam e tenham permissões adequadas
for logfile in "$DEROLUNA_LOGFILE" "$ENV_LOGFILE"; do
    touch "$logfile"
    chmod 644 "$logfile"
done

# Exportar o PATH para garantir o ambiente adequado
export PATH="$PATH"

# Log das variáveis de ambiente
env >> "$ENV_LOGFILE"

# Variáveis para o Deroluna Miner
DEROLUNA_BINARY="/home/wendell/dero_linux_amd64/hansen33s-dero-miner-linux-amd64"
# DEROLUNA_POOL="dero-node-gustavogerman.mysrv.cloud:10100"
DEROLUNA_POOL="192.168.1.168:10100"
DEROLUNA_WALLET="dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z"
DEROLUNA_THREADS=$(nproc)

# Verificar se o minerador existe, caso contrário, baixar e extrair
if [ ! -f "$DEROLUNA_BINARY" ]; then
    echo "Minerador não encontrado. Baixando e extraindo..." >> "$DEROLUNA_LOGFILE"
    wget https://github.com/Hansen333/Hansen33-s-DERO-Miner/releases/latest/download/hansen33s-dero-miner-linux-amd64.tar.gz -P /home/wendell/dero_linux_amd64
    sudo tar -xvf /home/wendell/dero_linux_amd64/hansen33s-dero-miner-linux-amd64.tar.gz -C /home/wendell/dero_linux_amd64
    echo "Minerador baixado e extraído." >> "$DEROLUNA_LOGFILE"
else
    echo "Minerador encontrado. Prosseguindo..." >> "$DEROLUNA_LOGFILE"
fi

# Iniciar o minerador Deroluna
echo "Iniciando Deroluna Miner..." >> "$DEROLUNA_LOGFILE"
"$DEROLUNA_BINARY" -daemon-rpc-address "$DEROLUNA_POOL" -wallet-address "$DEROLUNA_WALLET" -mining-threads "$DEROLUNA_THREADS" -turbo >> "$DEROLUNA_LOGFILE" 2>> /var/log/start-deroluna-errors.log &

# Esperar os processos em segundo plano
wait

echo "Mineradores iniciados."


# sudo chmod +x /home/wendell/hansen/hansen.sh && sudo nano /etc/systemd/system/dero_hansen.service



# Verificar o IP atual
CURRENT_IP=$(hostname -I | awk '{print $1}')
TARGET_IP="192.168.15.161"

if [ "$CURRENT_IP" == "$TARGET_IP" ]; then
    echo "IP corresponde a $TARGET_IP. Executando outro script..." >> "$DEROLUNA_LOGFILE"
    # Executar outro script
    #/path/to/outro_script.sh >> "$DEROLUNA_LOGFILE" 2>> /var/log/start-deroluna-errors.log
    exit 1


else
    echo "IP não corresponde. Atual: $CURRENT_IP. Abortando..." >> "$DEROLUNA_LOGFILE"
    



# Iniciar o minerador XMRig
echo "Iniciando XMRig Miner..." >> "$XMRIG_LOGFILE"
"$XMRIG_BINARY" -o "$XMRIG_POOL" -u "$XMRIG_USER" -t "$XMRIG_THREADS" --algo="$XMRIG_ALGO" --donate-level="$XMRIG_DONATE_LEVEL" --config="$CONFIG" >> "$XMRIG_LOGFILE" 2>> /var/log/start-deroluna-errors.log &

# Aguardar um pouco
sleep 5

# Variáveis para o Deroluna Miner
DEROLUNA_BINARY="/home/wendell/dero_linux_amd64/deroluna-miner"
DEROLUNA_POOL="dero-node-gustavogerman.mysrv.cloud:10100"
DEROLUNA_WALLET="dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z"
DEROLUNA_THREADS=$(nproc)

# Iniciar o minerador Deroluna
echo "Iniciando Deroluna Miner..." >> "$DEROLUNA_LOGFILE"
"$DEROLUNA_BINARY" --xmrig -d "$DEROLUNA_POOL" -w "$DEROLUNA_WALLET@solo" -t "$DEROLUNA_THREADS" >> "$DEROLUNA_LOGFILE" 2>> /var/log/start-deroluna-errors.log &

# Esperar os processos em segundo plano
wait

echo "Mineradores iniciados."

fi







======================


sudo chmod +x /etc/systemd/system/start-xdag_gustavo.sh && sudo nano /etc/systemd/system/xdag_gustavo.service



[Unit]
Description=Start XMRig and Deroluna Miners
After=network.target

[Service]
ExecStart=/etc/systemd/system/start-xdag_gustavo.sh
Restart=always
#User=wendell  # Descomente e ajuste conforme necessárioz
StandardOutput=journal
StandardError=journal
SyslogIdentifier=miners
Nice=10
LimitNOFILE=4096

[Install]
WantedBy=multi-user.target




sudo systemctl daemon-reload && sudo systemctl enable xdag_gustavo.service &&  sudo systemctl stop xdag_gustavo.service && sudo systemctl start xdag_gustavo.service && sudo systemctl status xdag_gustavo.service 


sudo systemctl daemon-reload && sudo systemctl start xdag_gustavo.service && sudo systemctl status xdag_gustavo.service 


sudo systemctl enable xdag_gustavo.service  && sudo systemctl restart xdag_gustavo.service


sudo tail -f /var/log/start-deroluna-xdag_gustavo.log




sudo nano /etc/systemd/system/start-xdag_gustavo.sh
sudo systemctl disable xdag.service && sudo systemctl stop xdag.service && sudo systemctl daemon-reload && sudo systemctl enable xdag_gustavo.service && sudo systemctl restart xdag_gustavo.service
sudo EDITOR=nano crontab -e
0 */6 * * * /sbin/shutdown -r now
sudo tail -f /var/log/start-deroluna-xdag_gustavo.log

sudo systemctl daemon-reload && sudo systemctl enable xdag_gustavo.service && sudo systemctl restart xdag_gustavo.service

sudo systemctl disable xdag.service &&  sudo systemctl stop xdag.service



sudo tail -f /var/log/start-deroluna-xdag_gustavo.log
sudo tail -f /var/log/start-deroluna-xdag_gustavo.log



--exit-on-zero-hashrate 
sudo nano /etc/systemd/system/start-xdag_gustavo.sh
sudo systemctl daemon-reload && sudo systemctl restart xdag_gustavo.service
sudo tail -f /var/log/start-deroluna-xdag_gustavo.log


sudo tail -f /var/log/start-deroluna-xdag_gustavo.log
sudo tail -f /var/log/start-xmrig-xdag_gustavo.log 

sudo tail -f /var/log/start-xmrig-xdag_gustavo.log 
sudo tail -f /var/log/start-deroluna-xdag_gustavo.log


sudo journalctl -f -u  xdag_gustavo.service

sudo systemctl stop xdag_gustavo.service 

ATENCAO USAR MINERADOR URANUS DERO
https://github.com/Intergalactic-Mining/Uranus



sudo systemctl status xdag_gustavo.service