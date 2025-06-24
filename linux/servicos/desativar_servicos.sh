#!/bin/bash

# Arquivo de backup para salvar o estado atual dos serviços em execução
BACKUP_FILE="backup_servicos_$(date +'%Y-%m-%d_%H-%M-%S').txt"

# Lista de serviços essenciais que NÃO devem ser desativados
ESSENCIAIS=(
    "ssh"
    "networking"
    "cron"
    "systemd"
    "dbus"
    "systemd-journald"
    "systemd-logind"
    "systemd-udevd"
    "polkit"
    "rsyslog"
    "gdm"
    "lightdm"  # Se usa um gerenciador de exibição
    "xrdp"     # Serviço RDP
    "vncserver" # Serviço VNC
)

# Função para verificar se um serviço está na lista de essenciais
is_essential() {
    for service in "${ESSENCIAIS[@]}"; do
        if [[ "$1" == *"$service"* ]]; then
            return 0  # É essencial
        fi
    done
    return 1  # Não é essencial
}

# Criar um backup dos serviços em execução antes de desativá-los
echo "Criando backup dos serviços em execução em $BACKUP_FILE..."
systemctl list-units --type=service --state=running --no-pager --no-legend | awk '{print $1}' > "$BACKUP_FILE"

# Obter todos os serviços em execução
SERVICOS=$(cat "$BACKUP_FILE")

# Iterar sobre cada serviço em execução
for servico in $SERVICOS; do
    # Verificar se o serviço é essencial
    if is_essential "$servico"; then
        echo "Serviço essencial: $servico (não será desativado)"
    else
        # Se não for essencial, desativar e parar o serviço
        echo "Desativando $servico..."
        sudo systemctl disable "$servico"
        sudo systemctl stop "$servico"
    fi
done

echo "Processo de desativação de serviços concluído. Backup salvo em $BACKUP_FILE."
