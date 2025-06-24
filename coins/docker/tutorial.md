# Instalacao Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce -y
sudo systemctl status docker
sudo usermod -aG docker $USER
docker run hello-world





# Instalacao Docker compose

sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose





# Setup




1. Estrutura de Pastas
Crie uma nova pasta para o seu projeto e navegue até ela:


mkdir tnn-miner-docker
cd tnn-miner-docker
2. Criar o docker-compose.yml
Dentro da pasta tnn-miner-docker, crie um arquivo chamado docker-compose.yml e adicione o seguinte conteúdo:

yaml
Copiar código
version: '3.8'

services:
  tnn-miner:
    image: ubuntu:24.04
    container_name: tnn-miner-container
    build:
      context: .
      dockerfile: Dockerfile
    volumes:
      - ./tnn-miner:/tnn-miner
    command: >
      bash -c "cmake /tnn-miner && make"
3. Criar o Dockerfile
Agora, crie um arquivo chamado Dockerfile na mesma pasta e adicione o seguinte conteúdo:

Dockerfile
Copiar código

# Usar a imagem base do Ubuntu 24.04
FROM ubuntu:24.04

# Instalar dependências
RUN apt update && apt install -y \
    git \
    wget \
    build-essential \
    cmake \
    clang \
    libssl-dev \
    libudns-dev \
    libc++-dev \
    lld \
    libsodium-dev \
    libboost1.83-all-dev \
    && rm -rf /var/lib/apt/lists/*


# Clonar o repositório do tnn-miner e Remover o diretório se existir
RUN [ -d /tnn-miner ] && rm -rf /tnn-miner || true 



RUN git clone https://github.com/Tritonn204/tnn-miner.git /tnn-miner



# Definir o diretório de trabalho

RUN [ -d /tnn-miner/build ] && rm -rf /tnn-miner/build || true 
RUN mkdir /tnn-miner/build

WORKDIR /tnn-miner/build



4. Executar o Docker Compose
Com os arquivos docker-compose.yml e Dockerfile criados, você pode iniciar o contêiner com o seguinte comando:

sudo docker-compose up --build

Esse comando irá:
Construir a imagem a partir do Dockerfile.
Clonar o repositório tnn-miner.
Instalar todas as dependências.
Criar o diretório build.
Executar os comandos cmake e make.


5. Acessar o Contêiner (opcional)
Se você quiser acessar o contêiner em execução para verificar arquivos ou executar comandos interativamente, pode usar:

sudo docker exec -it tnn-miner-container bash



Considerações Finais
Esse setup cria um ambiente Docker que instala as dependências necessárias, clona o repositório e compila o projeto. Se precisar de mais alguma coisa ou tiver dúvidas, estou aqui para ajudar!


