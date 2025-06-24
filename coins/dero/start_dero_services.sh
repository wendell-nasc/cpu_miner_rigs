
Aqui está um shell script para executar os comandos em etapas após o sistema Ubuntu ser reiniciado. O script será configurado para rodar automaticamente em cada boot do sistema.

Passo 1: Criar o Shell Script
Crie um arquivo de script chamado start_dero_services.sh no diretório /home/wendell/ (ou qualquer outro de sua preferência).

bash
Copiar código
sudo nano /home/wendell/start_dero_services.sh
Adicione o conteúdo abaixo ao arquivo:



==========================================================================================
bash

#!/bin/bash

#iniciar
sudo apt autoremove -y
sudo apt clean -y
sudo apt autoclean -y
sudo rm -rf /tmp/*

# Função para verificar e matar o processo que está usando uma porta específica
kill_process_on_port() {
  PORT=$1
  PID=$(sudo lsof -t -i:$PORT)

  if [ ! -z "$PID" ]; then
    echo "Processo encontrado na porta $PORT (PID: $PID). Finalizando..."
    sudo kill -9 $PID
  else
    echo "Nenhum processo em execução na porta $PORT."
  fi
}

# Verifica e encerra os processos que estão rodando nas portas 10102 e 10100
kill_process_on_port 10102
kill_process_on_port 10100

# Comando 1 - Remover o diretório (se existir)
if [ -d "/home/wendell/dero_linux_amd64mainnet" ]; then
  echo "Removendo o diretório /home/wendell/dero_linux_amd64/mainnet"
  rm -r /home/wendell/dero_linux_amd64/mainnet -f
else
  echo "Diretório não encontrado, não é necessário remover."
fi

# Comando 2 - Iniciar dero_bridge
echo "Iniciando dero_bridge..."
screen -S dero_bridge /home/wendell/dero_linux_amd64/derod-linux-amd64 --fastsync --integrator-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z --node-tag=node_dero

# Aguarda o término do comando 2 antes de ir para o próximo
wait $!

# # Comando 3 - Iniciar dero_integrator
# echo "Iniciando dero_integrator..."
# screen -S dero_integrator /home/wendell/dero_linux_amd64/derod-linux-amd64 --integrator-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z --node-tag=node_dero

# # Aguarda o término do comando 3 antes de ir para o próximo
# wait $!

# Comando 4 - Iniciar deroluna-miner
echo "Iniciando deroluna-miner..."
screen -S deroluna-miner /home/wendell/dero_linux_amd64/deroluna-miner -d 192.168.15.161:10100 -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -t $(nproc)

-d 192.168.15.161:10100  -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -t $(nproc)
==========================================================================================



Salve e saia do editor (Ctrl + X, Y, e Enter).

Torne o script executável:

bash
Copiar código
chmod +x /home/wendell/start_dero_services.sh
Passo 2: Configurar o Script para Executar Após o Reboot
Para garantir que o script seja executado automaticamente sempre que o sistema for reiniciado, use o crontab para adicionar uma tarefa agendada ao boot:

Edite o arquivo crontab do usuário root para adicionar o script ao boot:

bash
Copiar código
sudo crontab -e
Adicione a seguinte linha no final do arquivo:

bash
Copiar código
@reboot /home/wendell/start_dero_services.sh
Salve e saia do editor.

Passo 3: Testar
Reinicie o sistema para testar se o script está funcionando conforme esperado:

bash
Copiar código
sudo reboot
Após a reinicialização, você pode verificar se as sessões screen foram criadas com os comandos esperados usando:

bash
Copiar código
screen -ls
Isso deve listar as sessões dero_bridge, dero_integrator, e deroluna-miner rodando.