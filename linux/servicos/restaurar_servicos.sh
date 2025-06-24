#!/bin/bash

# Verificar se o arquivo de backup foi fornecido
if [ -z "$1" ]; then
    echo "Uso: $0 <arquivo_de_backup>"
    exit 1
fi

BACKUP_FILE="$1"

# Verificar se o arquivo de backup existe
if [ ! -f "$BACKUP_FILE" ]; then
    echo "Arquivo de backup não encontrado: $BACKUP_FILE"
    exit 1
fi

# Restaurar os serviços listados no arquivo de backup
echo "Restaurando serviços do arquivo de backup $BACKUP_FILE..."
SERVICOS=$(cat "$BACKUP_FILE")

for servico in $SERVICOS; do
    echo "Reativando e iniciando $servico..."
    sudo systemctl enable "$servico"
    sudo systemctl start "$servico"
done

echo "Restauração concluída."