
# Aqui está uma versão modificada do script que utiliza o comando sshpass para passar a senha automaticamente durante a conexão SSH. Para isso, você precisará instalar o sshpass no seu Ubuntu, se ainda não o tiver instalado.

Instalando o sshpass:
bash
Copiar código
sudo apt-get install sshpass
Script para conectar via SSH com usuário e senha:

====


#!/bin/bash

# Usuário e senha SSH
user="wendell"
password="duda123"

# Lista de servidores
servers=("192.168.1.141" "192.168.1.142" "192.168.1.147")

# Comando para parar o serviço e matar processos com executáveis contendo "dero"
stop_service_command="sudo systemctl stop deroluna.service"
kill_command="pkill -f dero"

# Executa os comandos remotamente em cada servidor
for server in "${servers[@]}"
do
  echo "Conectando ao servidor $server..."
  
  # Parar o serviço
  echo "Parando o serviço deroluna.service no servidor $server..."
  sshpass -p "$password" ssh -o StrictHostKeyChecking=no $user@$server "$stop_service_command"
  
  if [ $? -eq 0 ]; then
    echo "Serviço deroluna.service parado no servidor $server."
    
    # Matar processos contendo "dero"
    echo "Matando processos contendo 'dero' no servidor $server..."
    sshpass -p "$password" ssh -o StrictHostKeyChecking=no $user@$server "$kill_command"
    
    if [ $? -eq 0 ]; then
      echo "Processos contendo 'dero' foram encerrados no servidor $server."
    else
      echo "Falha ao matar processos no servidor $server."
    fi
  else
    echo "Falha ao parar o serviço deroluna.service no servidor $server."
  fi

done


====

Explicação:
O sshpass -p "$password" fornece a senha automaticamente para o comando ssh.
O parâmetro -o StrictHostKeyChecking=no evita que o SSH solicite confirmação sobre a chave de host na primeira vez que se conectar ao servidor.
O usuário wendell e a senha senha123 são usados para autenticação.



Aqui está uma versão modificada do script que utiliza o comando sshpass para passar a senha automaticamente durante a conexão SSH. Para isso, você precisará instalar o sshpass no seu Ubuntu, se ainda não o tiver instalado.

Instalando o sshpass:
bash
Copiar código
sudo apt-get install sshpass
Script para conectar via SSH com usuário e senha:
bash
Copiar código
#!/bin/bash

# Usuário e senha SSH
user="wendell"
password="senha123"

# Lista de servidores
servers=("192.168.1.130" "192.168.1.141")

# Comando para matar processos com executáveis contendo "dero"
kill_command="pkill -f dero"

# Executa o comando remotamente em cada servidor
for server in "${servers[@]}"
do
  echo "Conectando ao servidor $server..."
  sshpass -p "$password" ssh -o StrictHostKeyChecking=no $user@$server "$kill_command"
  
  if [ $? -eq 0 ]; then
    echo "Processos contendo 'dero' foram encerrados no servidor $server."
  else
    echo "Falha ao conectar ou executar o comando no servidor $server."
  fi
done
Explicação:
O sshpass -p "$password" fornece a senha automaticamente para o comando ssh.
O parâmetro -o StrictHostKeyChecking=no evita que o SSH solicite confirmação sobre a chave de host na primeira vez que se conectar ao servidor.
O usuário wendell e a senha senha123 são usados para autenticação.


Como usar:
Instale o sshpass:
sudo apt-get install sshpass

Salve o script com o nome, por exemplo, kill_dero_process_sshpass.sh.
sudo nano kill_dero_process_sshpass.sh


Dê permissão de execução ao script:
chmod +x kill_dero_process_sshpass.sh

Execute o script:
./kill_dero_process_sshpass.sh


ATENÇÃO .... PERMITIR PARAR SERVICOS

Abra o arquivo sudoers para editar:

bash
Copiar código
sudo visudo
Adicione a seguinte linha no arquivo sudoers, que permitirá ao usuário wendell executar o comando systemctl stop deroluna.service sem ser solicitado a digitar a senha:

bash
Copiar código
wendell ALL=(ALL) NOPASSWD: /bin/systemctl stop deroluna.service