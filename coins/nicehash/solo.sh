precisa modificar e copiar o do MANGONOTE.SH
#!/bin/bash

# Definir arquivos de log
XMRIG_LOGFILE="/var/log/start-xmrig.log"
DEROLUNA_LOGFILE="/var/log/start-deroluna.log"

# Garantir que os arquivos de log existam e tenham permissões adequadas
touch $XMRIG_LOGFILE
chmod 644 $XMRIG_LOGFILE
touch $DEROLUNA_LOGFILE
chmod 644 $DEROLUNA_LOGFILE

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
echo "Iniciando XMRig Miner..." >> $XMRIG_LOGFILE
$XMRIG_BINARY -o $XMRIG_POOL -u $XMRIG_USER -t $XMRIG_THREADS --algo=$XMRIG_ALGO --http-host 127.0.0.1 --http-port $XMRIG_HTTP_PORT --http-access-token $XMRIG_HTTP_TOKEN --donate-level=$XMRIG_DONATE_LEVEL --config=$CONFIG >> $XMRIG_LOGFILE 2>&1 &


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
