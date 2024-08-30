#!/bin/bash
#
# Caminho para o código fonte e script a ser executado
worktree=/home/wendell/hook
start_script="$worktree/xmrig/start_miner.sh"
#git config --global --add safe.directory /home/wendell/hook


# Caminho para armazenar o hash do commit remoto
commit_file="/home/wendell/hook/last_commit.txt"

# Navega até o diretório do repositório
cd "$worktree" || { echo "Falha ao acessar o diretório $worktree"; exit 1; }


# Atualiza o repositório
cd "$repo_dir" || exit

# Configura o ambiente para usar a chave SSH
export GIT_SSH_COMMAND="ssh -i /home/wendell/.ssh/id_ed25519"



# Atualiza o repositório para garantir que temos as informações mais recentes
git fetch origin

# Obtém o hash do commit local e remoto
local_commit=$(git rev-parse HEAD)
remote_commit=$(git rev-parse origin/master)  # Altere 'main' se o branch padrão for diferente


# Verifica se o hash do commit remoto foi alterado
if [[ "$remote_commit" != "$old_remote_commit" ]]; then
    echo "Houve alterações no repositório remoto."

    # Atualiza o repositório local para a última versão
    git pull origin master  # Altere 'main' se o branch padrão for diferente
    /home/wendell/hook/xmrig/start_miner.sh

#    sudo chown +x  /home/wendell/hook/xmrig/start_miner.sh
#    sudo chown +x  /home/wendell/hook/xmrig/start.sh
#    sudo chown +x  /home/wendell/hook/xmrig/start_xmr_geral.sh

    # Executa o script start.sh
    if [[ -x $start_script ]]; then
        "$start_script"
	echo "O script $start_script foi executado com sucesso !!!"
    else
        echo "O script $start_script não é executável ou não foi encontrado."
    fi

else
    echo "Nenhuma alteração detectada no repositório remoto."
    "$start_script"
fi
/home/wendell/hook/xmrig/start_miner.sh
