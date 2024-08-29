#!/bin/bash
#
# Caminho para o código fonte e script a ser executado
worktree="/home/wendell/hook"
REPO_DIR="/home/wendell/hook"
start_script="$worktree/xmrig/start_miner.sh"

# Verifica se o diretório do repositório existe
if [ ! -d "$worktree" ]; then
    echo "O diretório $worktree não existe."
    exit 1
fi

# Navega até o diretório do repositório
cd "$worktree" || { echo "Falha ao acessar o diretório $worktree"; exit 1; }

# Adiciona o diretório à lista de diretórios seguros
git config --global --add safe.directory "$REPO_DIR"

# Atualiza o repositório para garantir que temos as informações mais recentes
git fetch origin

# Obtém o hash do último commit remoto
REMOTE_HASH=$(git ls-remote origin -h refs/heads/master | awk '{print $1}')

# Obter o hash do último commit local
LOCAL_HASH=$(cat /tmp/local_git_hash 2>/dev/null || echo "")

# Comparar os hashes
if [ "$REMOTE_HASH" != "$LOCAL_HASH" ]; then
    echo "Houve alterações no repositório remoto."

    # Atualiza o hash local
    echo "$REMOTE_HASH" > /tmp/local_git_hash

    # Executa o script de atualização
    /home/wendell/hook/xmrig/start_final.sh
else
    echo "Nenhuma alteração detectada no repositório remoto."
    for pid in $(pgrep xmrig); do sudo kill $pid; done
    # Executa o script de atualização
    /home/wendell/hook/xmrig/start_final.sh
    
fi
