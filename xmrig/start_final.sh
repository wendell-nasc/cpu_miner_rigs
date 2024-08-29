#!/bin/bash
#
# Caminho para o código fonte e script a ser executado
worktree=/home/wendell/hook
start_script="$worktree/xmrig/start_miner.sh"

# Verifica se o diretório do repositório existe
if [ ! -d "$worktree" ]; then
    echo "O diretório $worktree não existe."
    exit 1
fi

# Navega até o diretório do repositório
cd "$worktree" || { echo "Falha ao acessar o diretório $worktree"; exit 1; }

# Atualiza o repositório para garantir que temos as informações mais recentes
git fetch origin

# Obtém o hash do último commit remoto
latest_commit=$(git rev-parse origin/master) # Use 'main' se o branch padrão for diferente

# Obtém o hash do último commit local
if [ -f "$worktree/latest_commit.txt" ]; then
    stored_commit=$(cat "$worktree/latest_commit.txt")
else
    stored_commit=""
fi

# Verifica se houve alterações
if [ "$latest_commit" != "$stored_commit" ]; then
    echo "Houve alterações no repositório remoto."

    # Atualiza o repositório local para a última versão
    git pull origin master # Altere 'main' se o branch padrão for diferente

    # Atualiza a referência armazenada
    echo "$latest_commit" > "$worktree/latest_commit.txt"

    # Executa o script start.sh
    if [ -x "$start_script" ]; then
        "$start_script"
        echo "O script $start_script foi executado com sucesso!"
    else
        echo "O script $start_script não é executável ou não foi encontrado."
        exit 1
    fi
else
    echo "Nenhuma alteração detectada no repositório remoto."
    "$start_script"
    echo "O script $start_script foi executado com sucesso!"

fi

