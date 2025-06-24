#!/bin/bash

#KASPA
#MINER_ADDRESS="KAS:kaspa:qpe47sr5ulplcnnn8wx4c3t7s96a64u9kd20tzu4lrcn55pw4ny85vqdx6g93"

#PEPE
#MINER_ADDRESS="PEPE:0x8889b1860fd0b3f7daa4c80a2046d10413a72233"'


#DOGE
MINER_ADDRESS="DOGE:D8gFNSVqNR59fXrJBBmgZ7xttdxU2X2kps"


# Captura o nome do host
HOSTNAME=$(hostname)

# Define o endereço do minerador (sem o prefixo KAS:kaspa:)
MINER_ADDRESS=$MINER_ADDRESS  # Substitua pelo endereço real

# Formata o endereço completo (se for necessário, ajuste conforme o formato exigido pela sua pool)
FULL_ADDRESS="${MINER_ADDRESS}.${HOSTNAME}"

/opt/xmrig/xmrig -o rx.unmineable.com:3333 -u $FULL_ADDRESS  -k  --config=/home/wendell/hook/xmrig/config.json

