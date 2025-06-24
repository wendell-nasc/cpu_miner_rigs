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

sudo mkdir /home/wendell/xdag  && cd /home/wendell/xdag/ && sudo wget https://github.com/FSOL-XDAG/xmrig-4-xdag/releases/download/v.6.20.0/x4x-6.20.0-hive-ubuntu_18.04-x64.tar.gz && tar -xvf x4x-6.20.0-hive-ubuntu_18.04-x64.tar.gz 
cd /home/wendell && sudo wget https://github.com/deroproject/derohe/releases/latest/download/dero_linux_amd64.tar.gz && sudo tar xvzf dero_linux_amd64.tar.gz && cd dero_linux_amd64 && sudo wget https://github.com/DeroLuna/dero-miner/releases/download/v1.13-beta/deroluna-miner-linux-amd64.tar.gz && sudo tar -xvf deroluna-miner-linux-amd64.tar.gz





🔹Ubuntu 20.04
rig153 
rig154
rig155
rig158
rig162

sudo mkdir /home/wendell/xdag && cd /home/wendell/xdag/ && sudo wget https://github.com/FSOL-XDAG/xmrig-4-xdag/releases/download/v.6.20.0/x4x-6.20.0-linux-ubuntu_20.04-x64.tar.gz && sudo tar -xvf x4x-6.20.0-linux-ubuntu_20.04-x64.tar.gz 


- corrigir
rig163 ---- falta configurar o servico


🔹Ubuntu 22.04
sudo mkdir /home/wendell/xdag && cd /home/wendell/xdag/ && sudo wget https://github.com/FSOL-XDAG/xmrig-4-xdag/releases/download/v.6.20.0/x4x-6.20.0-linux-ubuntu_22.04-x64.tar.gz && sudo tar -xvf x4x-6.20.0-linux-ubuntu_22.04-x64.tar.gz 



==============LOGS

sudo touch /var/log/start-xmrig-xdag.log
sudo chown wendell:wendell /var/log/start-xmrig-xdag.log
sudo chmod 666 /var/log/start-xmrig-xdag.log
sudo touch /var/log/start-xmrig-xdag.log && sudo chown wendell:wendell /var/log/start-xmrig-xdag.log && sudo chmod 666 /var/log/start-xmrig-xdag.log




====


sudo nano /etc/systemd/system/start-xdag_org_solo.sh

#!/bin/bash

# Definir arquivos de log
XMRIG_LOGFILE="/var/log/start-xmrig-xdag.log"
ENV_LOGFILE="/var/log/start-env.log"

# Garantir que os arquivos de log existam e tenham permissões adequadas
for logfile in "$XMRIG_LOGFILE" "$ENV_LOGFILE"; do
    touch "$logfile"
    chmod 644 "$logfile"
done

# Exportar o PATH para garantir o ambiente adequado
export PATH="$PATH"

# Log das variáveis de ambiente
env >> "$ENV_LOGFILE"

# Variáveis para o XMRig
XMRIG_BINARY="/home/wendell/xdag/xmrig-4-xdag/xmrig-4-xdag"
XMRIG_POOL="stratum.xdag.org:23655"
XMRIG_USER="Dzdbr5d8PVafQwvEkEwfNde7mFKNDaDSv.$(hostname)"
XMRIG_ALGO="rx/xdag"
XMRIG_THREADS=$(nproc)
XMRIG_DONATE_LEVEL="1"
CONFIG="/opt/xmrig/config.json"

# Iniciar o minerador XMRig
echo "Iniciando XMRig Miner..." >> "$XMRIG_LOGFILE"
"$XMRIG_BINARY" -o "$XMRIG_POOL" -u "$XMRIG_USER" -t "$XMRIG_THREADS" --algo="$XMRIG_ALGO" --donate-level="$XMRIG_DONATE_LEVEL" --config="$CONFIG" >> "$XMRIG_LOGFILE" 2>> "$XMRIG_LOGFILE"

sudo chmod +x /etc/systemd/system/start-xdag_org_solo.sh



======================


sudo chmod +x /etc/systemd/system/start-xdag_org_solo.sh && sudo nano /etc/systemd/system/start-xdag_org_solo.service



[Unit]
Description=Start XMRig and Deroluna Miners
After=network.target

[Service]
ExecStart=/etc/systemd/system/start-xdag_org_solo.sh
Restart=always
#User=wendell  # Descomente e ajuste conforme necessário
StandardOutput=journal
StandardError=journal
SyslogIdentifier=miners
Nice=10
LimitNOFILE=4096

[Install]
WantedBy=multi-user.target




sudo systemctl disable xdag_gustavo.service &&  sudo systemctl stop xdag_gustavo.service 
sudo systemctl disable xdag_gustavo.service &&  sudo systemctl stop xdag_gustavo.service && sudo systemctl daemon-reload && sudo systemctl start start-xdag_org_solo.service && sudo systemctl status start-xdag_org_solo.service
sudo systemctl daemon-reload && sudo systemctl restart start-xdag_org_solo.service 


sudo systemctl status start-xdag_org_solo.service
sudo tail -f /var/log/start-deroluna-xdag_gustavo.log


sudo journalctl -f -u  xdag_gustavo.service 


