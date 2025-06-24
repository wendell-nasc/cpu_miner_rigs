# 29/09
# spectre projeto
https://github.com/spectre-project

# tnn git
https://github.com/Tritonn204/tnn-miner

./spectred --utxoindex --rpclisten=0.0.0.0:18110

#  Instalar manualmente uma versão mais recente de glibc  2.14 (ubuntu 20.04)
sudo apt install build-essential
sudo apt install gcc-10 g++-10 
mkdir ~/glibc_install; cd ~/glibc_install
wget http://ftp.gnu.org/gnu/glibc/glibc-2.14.tar.gz
tar zxvf glibc-2.14.tar.gz
cd glibc-2.14
mkdir build
cd build
../configure --prefix=/opt/glibc-2.14
make -j4
sudo make install




#  Instalar manualmente uma versão mais recente de glibc 2.34 (se necessário)
1) Baixar o código-fonte da glibc:

wget http://ftp.gnu.org/gnu/libc/glibc-2.34.tar.gz
Extrair e compilar:

2) Configurar a nova versão para ser usada:
sudo update 
sudo apt install gawk bison -y

tar -xvzf glibc-2.34.tar.gz
cd glibc-2.34
mkdir build
cd build
sudo ../configure --prefix=/opt/glibc-2.34
sudo make -j$(nproc)
sudo make install


3) Após a instalação, você pode adicionar o caminho da nova instalação ao LD_LIBRARY_PATH:


export LD_LIBRARY_PATH=/opt/glibc-2.34/lib:$LD_LIBRARY_PATH






sudo systemctl disable deroluna.service
sudo systemctl stop deroluna.service


1) Install general prerequisites
sudo update && sudo apt install curl git build-essential libssl-dev pkg-config

2) Install Protobuf (required for gRPC)
sudo apt install protobuf-compiler

3) Install the clang toolchain (required for RocksDB and WASM secp256k1 builds)
sudo apt-get install clang-format clang-tidy clang-tools clang clangd libc++-dev libc++1 libc++abi-dev libc++abi1 libclang-dev libclang1 liblldb-dev libllvm-ocaml-dev libomp-dev libomp5 lld lldb llvm-dev llvm-runtime llvm python3-clang -y


# INSTALAÇÃO POOL MINER SPECTRA - USAR ESSE !!!!
1) 

sudo apt update
sudo apt install build-essential cmake


2) Usar uma versão mais recente do compilador: Se o seu compilador estiver desatualizado, considere atualizar para uma versão mais recente que suporte a arquitetura que você deseja compilar. Para instalar uma versão mais recente do GCC, você pode usar o PPA:

sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt update
sudo apt install g++-11
Após a instalação, você pode configurar o compilador CMake para usar o GCC 11:

3) 

export CC=/usr/bin/gcc-11
export CXX=/usr/bin/g++-11
sudo cmake ..

4) Compilação Final
sudo rm -rf ~/tnn/tnn-miner/build/*
cd ~/tnn/tnn-miner/build
make -j$(nproc)


# SETUP DEPENDENCIAS
sudo apt install git wget build-essential cmake clang libssl-dev libudns-dev libfmt-dev libc++-dev lld 
sudo apt-get install libboost-all-dev
sudo apt install libcurl4-openssl-dev
sudo apt install libssl-dev
sudo apt install gettext libayatana-appindicator3-dev


# TNN MINER
https://github.com/Tritonn204/tnn-miner


sudo apt-get install libstdc++-12-dev -y
sudo apt-get install libfmt-dev -y


sudo apt install git wget build-essential cmake clang libssl-dev libudns-dev libfmt-dev libc++-dev lld 


# Checkout tnn-miner got from github
git clone https://github.com/Tritonn204/tnn-miner.git
cd tnn-miner
mkdir build
cd build
sudo cmake ..
sudo make -j $(nproc)





# Build Spectra HiveOS
sudo apt  install cargo -y
sudo apt-get install protobuf-compiler -y

git clone https://github.com/spectre-project/spectre-miner
cd spectre-miner
sudo cargo build --release


# Spectra node
https://github.com/spectre-project/rusty-spectre

sudo apt install curl git build-essential libssl-dev pkg-config -y

sudo apt install protobuf-compiler libprotobuf-dev -y

sudo apt-get install clang-format clang-tidy clang-tools clang clangd libc++-dev libc++1 libc++abi-dev libc++abi1 libclang-dev libclang1 liblldb-dev libllvm-ocaml-dev libomp-dev libomp5 lld lldb llvm-dev llvm-runtime llvm python3-clang -y



<!-- sudo snap install rustup --classic -->
sudo rustup default stable
cargo install wasm-pack


rustup target add wasm32-unknown-unknown

git clone https://github.com/spectre-project/rusty-spectre
cd rusty-spectre
export TARGET_CC=clang
export TARGET_CFLAGS=-I/usr/include


cargo run --release --bin spectred -- --utxoindex --rpclisten=0.0.0.0:18110 # USAR O SCREEN ABAIXO

sudo screen -S spectre_node cargo run --release --bin spectred -- --utxoindex --rpclisten=0.0.0.0:18110


sudo screen -S spectre_node ./spectred --utxoindex --rpclisten=0.0.0.0:18110

mkdir spr_node && cd spr_node && wget https://github.com/spectre-project/rusty-spectre/releases/download/v0.3.15/rusty-spectre-v0.3.15-linux-gnu-amd64.zip && unzip rusty-spectre-v0.3.15-linux-gnu-amd64.zip && cd bin 



# Spectra 
mkdir spr_bridge && cd spr_bridge && wget https://github.com/spectre-project/spectre-stratum-bridge/releases/download/v0.3.15/spr_bridge-v0.3.15-linux-x86_64.zip && unzip spr_bridge-v0.3.15-linux-x86_64.zip && cd ./spr_bridge/bin

sudo screen -S spectre ./spr_bridge



# Spectra Pool
sudo screen -S spectre-pool ./tnn-miner --spectre --wallet spectre:qzxzq9vg3txjv9s9uymun9xdcvh39w4qaf0e5xqtvpxjrcc3nku9kzcxcvxu2 --daemon-address spr.tw-pool.com --port 14001 --worker-name $(hostname) --threads $(nproc) 


sudo screen -S spectre-pool ./tnn-miner --spectre --wallet spectre:qzxzq9vg3txjv9s9uymun9xdcvh39w4qaf0e5xqtvpxjrcc3nku9kzcxcvxu2 --daemon-address spr.tw-pool.com --port 14001 --worker-name teste1 --threads 1



./spectre-miner-v0.3.17-linux-gnu-amd64 

#!/bin/bash
./tnn-miner --spectre \
    --wallet spectre:qzxzq9vg3txjv9s9uymun9xdcvh39w4qaf0e5xqtvpxjrcc3nku9kzcxcvxu2 \
    --daemon-address spr.tw-pool.com \
    --port 14001 \
    --worker-name $(hostname) \
    --threads $(nproc)



# Berna
https://www.bernacripto.com.br/spectre_miner_x64-v0.6.19_berna.tar.gz


Funcionando aqui.
node: spectre.bernacripto.com.br:18220
não precisa por nada no extra arguments
threads setadas automaticamente para o máximo de cada cpu, caso queira setar menos, pode por -t x no extra
pelo visto, está funcioando em nosso node de SPR sem bugar, para voces acompanharem pelo site http://spectre.bernacripto.com.br:3000/d/z73gHk89e1/spr-monitoring?orgId=1



# tutorial

Galera, a quem possa interessar!

Vou compartilhar,o passo a passo para criar o node de SPR aqui.

Primeiro vou postar a FS da rig (com o HIVE OS mesmo), com o NODE de SPR.

Depois as outras rig's NA MESMA REDE (se for de fora precisa alterar a porta, não testei ainda).

Segue o passo a passo:

apt install g++-11 -y && apt install libc6 -y

mkdir spr_node && cd spr_node && wget https://github.com/spectre-project/rusty-spectre/releases/download/v0.3.14/rusty-spectre-v0.3.14-linux-gnu-amd64.zip && unzip rusty-spectre-v0.3.14-linux-gnu-amd64.zip && cd bin && screen -S node ./spectred --utxoindex --rpclisten=0.0.0.0:18110

Ctrl+A+D

cd ../../ && mkdir spr_bridge && cd spr_bridge && wget https://github.com/spectre-project/spectre-stratum-bridge/releases/download/v0.3.15/spr_bridge-v0.3.15-linux-x86_64.zip && unzip spr_bridge-v0.3.15-linux-x86_64.zip && cd bin && screen -S bridge ./spr_bridge

Ctrl+A+D

Start the miner

sh screen -ls

sh screen -r bridge

cd spr_node && cd bin && screen -S node ./spectred --utxoindex --rpclisten=0.0.0.0:18110

Ctrl+A+D

cd ../../ && cd spr_bridge && cd bin && screen -S bridge ./spr_bridge

Mudem seu IP do PC do NODE e OS THREADS de acordo com SUA's CPU's.

É rápido. Leva uns 30 minutos, mais ou menos. Comigo deu certo. 👍🤝

OBS: No meu HIVE OS não aparece nada, mas está minerando, vejo em "miner log" 





# Spectra Oficial
https://github.com/spectre-project/

# bridge - spectre-stratum-bridge
https://github.com/spectre-project/spectre-stratum-bridge/releases

# node - rusty-spectre
https://github.com/spectre-project/rusty-spectre/releases


# configuração

-->node spectra
screen -S spectra_node /home/wendell/spr_node/bin/spectred --utxoindex --rpclisten=0.0.0.0:18110


-->bridge spectra
screen -S spectra_bridge screen -S bridge ./spr_bridge


-->tnn spectra
screen -S spectra_tnn /home/wendell/tnn-miner/build/Tnn-miner --spectre --daemon-address 192.168.15.161 --port 5555 --wallet spectre:qzxzq9vg3txjv9s9uymun9xdcvh39w4qaf0e5xqtvpxjrcc3nku9kzcxcvxu2 --worker-name wendell_arthurzao --threads $(nproc)


Tnn.exe --spectre --daemon-address 192.168.15.161 --port 5555 --wallet spectre:qzxzq9vg3txjv9s9uymun9xdcvh39w4qaf0e5xqtvpxjrcc3nku9kzcxcvxu2 --worker-name wendell_arthurzao --threads 4














screen -S tnn_spectra ./Tnn-miner --spectre --daemon-address=0.0.0.0   --port 18110 --wallet spectre:qpptxd85y9w8e3alvl62y46t0f2sgvxdl095440f4jcmn35sx2ud7c3dmh77k --worker-name wendell --threads $(nproc)




# NO SPECTRE
--spectre --daemon-address 200.148.5.190 --port 5555 --wallet %WAL%  --worker-name %WORKER_NAME% --threads $(nproc)



-->bridge
screen -S bridge_spectra ./home/wendell/spr_bridge/bin/spr_bridge
screen -S bridge_spectra ./spr_bridge

-->node
screen -S node_spectra /home/wendell/spr_node/bin/spectred --utxoindex --rpclisten=0.0.0.0:18110

-->tnn
screen -S tnn /home/wendell/tnn-miner/build/Tnn-miner --spectre --daemon-address 200.148.5.190 --port 5555 --wallet spectre:qzxzq9vg3txjv9s9uymun9xdcvh39w4qaf0e5xqtvpxjrcc3nku9kzcxcvxu2 --worker-name wendell_arthurzao --threads $(nproc)


./Tnn-miner --spectre --daemon-address 200.148.5.190 --port 5555 --wallet spectre:qzxzq9vg3txjv9s9uymun9xdcvh39w4qaf0e5xqtvpxjrcc3nku9kzcxcvxu2 --worker-name wendell_arthurzao --threads $(nproc)




# Reanexar à Sessão screen: Para reanexar a sessão e visualizar a execução novamente, use:

screen -r <nome_da_sessao>
screen -r node
screen -r bridge
screen -r tnn

# Desatchar sessão
Ctrl+A+D




# no

Galera, a quem possa interessar!

Vou compartilhar,o passo a passo para criar o node de SPR aqui.

Primeiro vou postar a FS da rig (com o HIVE OS mesmo), com o NODE de SPR.

Depois as outras rig's NA MESMA REDE (se for de fora precisa alterar a porta, nao testei ainda).

Segue o passo a passo:

apt install g++-11 -y && apt install libc6 -y

mkdir spr_node && cd spr_node && wget https://github.com/spectre-project/rusty-spectre/releases/download/v0.3.14/rusty-spectre-v0.3.14-linux-gnu-amd64.zip && unzip rusty-spectre-v0.3.14-linux-gnu-amd64.zip && cd bin && screen -S node ./spectred --utxoindex --rpclisten=0.0.0.0:18110

Ctrl+A+D

mkdir spr_bridge && cd spr_bridge && wget https://github.com/spectre-project/spectre-stratum-bridge/releases/download/v0.3.15/spr_bridge-v0.3.15-linux-x86_64.zip && unzip spr_bridge-v0.3.15-linux-x86_64.zip && cd ./spr_bridge/bin && screen -S bridge ./spr_bridge

Ctrl+A+D





screen -S node ./spectred --utxoindex --rpclisten=0.0.0.0:18110



Start the miner

sh screen -ls

sh screen -r bridge

cd spr_node && cd bin && screen -S node ./spectred --utxoindex --rpclisten=0.0.0.0:18110

cd /home/wendell/spr_node/bin && screen -S node ./spectred --utxoindex --rpclisten=0.0.0.0:18110

screen -S node ./spectred --utxoindex --rpclisten=0.0.0.0:18110



mkdir spr_bridge && cd spr_bridge && wget https://github.com/spectre-project/spectre-stratum-bridge/releases/download/v0.3.15/spr_bridge-v0.3.15-linux-x86_64.zip && unzip spr_bridge-v0.3.15-linux-x86_64.zip && cd ./spr_bridge/bin && screen -S bridge ./spectred


Ctrl+A+D

cd ../../ && cd spr_bridge && cd bin && screen -S bridge ./spr_bridge

Mudem seu IP do PC do NODE e OS THREADS de acordo com SUA's CPU's.

É rápido. Leva em torno de 1h e 30 minutos, mais ou menos. Comigo deu certo. 👍🤝 @everyone








=========> Esse comando !!!!
screen -S node ./spectred --utxoindex --rpclisten=192.168.15.161:18110
screen -S node ./spectred --utxoindex --rpclisten=0.0.0.0:18110

screen -S bridge ./spr_bridge

mkdir spr_node && cd spr_node && wget https://github.com/spectre-project/rusty-spectre/releases/download/v0.3.14/rusty-spectre-v0.3.14-linux-gnu-amd64.zip && unzip rusty-spectre-v0.3.14-linux-gnu-amd64.zip && cd bin && 
sudo screen -S node ./spectred --utxoindex --rpclisten=0.0.0.0:18110

sudo screen -S node ./spectred --utxoindex --rpclisten=0.0.0.0:18110




# oficial
https://github.com/spectre-project/spectre-miner

# setup
wget https://github.com/spectre-project/spectre-miner/archive/refs/tags/v0.3.17.tar.gz
tar -xvzf v0.3.17.tar.gz



# setup
sudo apt update

sudo apt  install snapd -y && sudo apt  install rustup -y && sudo snap install rustup --classic && sudo apt install curl git build-essential libssl-dev pkg-config -y

sudo apt install protobuf-compiler libprotobuf-dev -y


https://github.com/spectre-project/rusty-spectre
sudo apt-get install clang-format clang-tidy clang-tools clang clangd libc++-dev libc++1 libc++abi-dev libc++abi1  libclang-dev libclang1 liblldb-dev libllvm-ocaml-dev libomp-dev libomp5 lld lldb llvm-dev llvm-runtime llvm python3-clang -y


sudo apt  install cargo -y
sudo apt-get install protobuf-compiler -y

git clone https://github.com/spectre-project/spectre-miner
cd spectre-miner
sudo cargo build --release



# comandos
Reconfigure todos os pacotes que podem estar quebrados:


sudo dpkg --configure -a
Corrigir Dependências
Corrija quaisquer dependências quebradas:


sudo apt-get install -f
Atualizar e Tentar Novamente
Atualize a lista de pacotes e tente atualizar novamente:


sudo apt-get update
sudo apt-get upgrade


./spectre-miner --mining-address=192.168.15.161  --port=18110 --devfund=spectre:qzxzq9vg3txjv9s9uymun9xdcvh39w4qaf0e5xqtvpxjrcc3nku9kzcxcvxu2


./spectre-miner --mining-address=127.0.0.1 --devfund=spectre:qzxzq9vg3txjv9s9uymun9xdcvh39w4qaf0e5xqtvpxjrcc3nku9kzcxcvxu2


spectre-miner-v0.3.17-win64-amd64.exe --mining-address=192.168.15.161 --port=5555 --devfund=spectre:qzxzq9vg3txjv9s9uymun9xdcvh39w4qaf0e5xqtvpxjrcc3nku9kzcxcvxu2


./Tnn-miner --spectre --daemon-address=0.0.0.0   --port 18110 --wallet spectre:qzxzq9vg3txjv9s9uymun9xdcvh39w4qaf0e5xqtvpxjrcc3nku9kzcxcvxu2 --worker-name wendell --threads $(nproc)

Tnn-miner.exe --spectre --daemon-address 192.168.15.161 --port 555  --wallet spectre:qzxzq9vg3txjv9s9uymun9xdcvh39w4qaf0e5xqtvpxjrcc3nku9kzcxcvxu2 --worker-name wendell-note --threads 2 




 --wallet spectre:qzxzq9vg3txjv9s9uymun9xdcvh39w4qaf0e5xqtvpxjrcc3nku9kzcxcvxu2 --worker-name wendell --threads 4






# rusty-spectre
sudo apt install curl git build-essential libssl-dev pkg-config -y

sudo apt install protobuf-compiler libprotobuf-dev -y


https://github.com/spectre-project/rusty-spectre
sudo apt-get install clang-format clang-tidy clang-tools clang clangd libc++-dev libc++1 libc++abi-dev libc++abi1  libclang-dev libclang1 liblldb-dev libllvm-ocaml-dev libomp-dev libomp5 lld lldb llvm-dev llvm-runtime llvm python3-clang -y
















########################bash tnn threads
#!/bin/bash

# Detecta o número de threads disponíveis (núcleos da CPU)
threads=$(nproc)

# Executa o minerador com o número de threads detectado
./Tnn-miner --spectre --daemon-address 0.0.0.0 --port 5555 --wallet spectre:qzxzq9vg3txjv9s9uymun9xdcvh39w4qaf0e5xqtvpxjrcc3nku9kzcxcvxu2 --worker-name wendell --threads $threads






--spectre --daemon-address 192.168.1.72 --port 18110 --wallet %WAL% --threads $(nproc)




############

#!/bin/bash

# Detecta o número de threads disponíveis (núcleos da CPU)
threads=$(nproc)

# Executa o minerador com o número de threads detectado
./Tnn-miner --spectre --daemon-address 200.148.5.190 --port 5555 --wallet spectre:qzxzq9vg3txjv9s9uymun9xdcvh39w4qaf0e5xqtvpxjrcc3nku9kzcxcvxu2 --worker-name wendell --threads $threads


Tnn-miner.exe 






############

#!/bin/bash

# Detecta o número de threads disponíveis (núcleos da CPU)
threads=$(nproc)



./Tnn-miner --spectre --daemon-address 200.148.5.190 --port 5555 --wallet spectre:qzxzq9vg3txjv9s9uymun9xdcvh39w4qaf0e5xqtvpxjrcc3nku9kzcxcvxu2 --worker-name wendell_arthurzao --threads $(nproc)



Tnn-miner.exe --spectre --daemon-address 200.148.5.190 --port 5555 --wallet spectre:qzxzq9vg3txjv9s9uymun9xdcvh39w4qaf0e5xqtvpxjrcc3nku9kzcxcvxu2 --worker-name wendell_positivo --threads 4



screen -S spectre-pool /spectre-pool/tnn-miner --spectre --wallet spectre:qzxzq9vg3txjv9s9uymun9xdcvh39w4qaf0e5xqtvpxjrcc3nku9kzcxcvxu2 --daemon-address 200.148.5.190 --port 5555 --worker-name HIVE1 --threads 4



./tnn-miner --spectre --wallet spectre:qzxzq9vg3txjv9s9uymun9xdcvh39w4qaf0e5xqtvpxjrcc3nku9kzcxcvxu2 --daemon-address 200.148.5.190 --port 5555 --worker-name HIVE1 --threads 4


# glibc manualmente
sudo apt install gawk bison
wget http://ftp.gnu.org/gnu/libc/glibc-2.34.tar.gz
tar -xvf glibc-2.34.tar.gz
cd glibc-2.34
mkdir build
cd build
../configure --prefix=/opt/glibc-2.34
make -j$(nproc)
sudo make install



































## RASCUNHO
./spectre-miner-v0.3.17-linux-gnu-amd64 --devfund spectre:qzxzq9vg3txjv9s9uymun9xdcvh39w4qaf0e5xqtvpxjrcc3nku9kzcxcvxu2  --mining-address spr.tw-pool.com  --port 14001 


# SPECTRA
https://tw-pool.com/stats/spectre
spr.tw-pool.com:14001	

# TNN BERNACRIPTO
wget https://www.bernacripto.com.br/tnn-miner-v0.4.1.beta.1.0_berna.tar.gz
wget https://rafatech.net/dados/tnn-miner-v0.3.7.br1.4.tar.gz
tar -xzvf tnn-miner-v0.4.1.beta.1.0_berna.tar.gz



# SETUP DEPENDENCIAS
sudo apt-get install libboost-all-dev
sudo apt install libcurl4-openssl-dev
sudo apt install libssl-dev
sudo apt install gettext libayatana-appindicator3-dev



# MINER SPRECTRA ... NAO USADO !!!
sudo apt  install cargo
sudo apt-get install protobuf-compiler
git clone https://github.com/spectre-project/spectre-miner
cd spectre-miner
sudo cargo build --release



# tnn
https://github.com/Tritonn204/tnn-miner


sudo apt-get install libstdc++-12-dev -y
sudo apt-get install libfmt-dev -y


sudo apt install git wget build-essential cmake clang libssl-dev libudns-dev libfmt-dev libc++-dev lld 


# Checkout tnn-miner got from github
git clone https://github.com/Tritonn204/tnn-miner.git
cd tnn-miner

sudo apt remove llvm clang
<!-- sudo apt install software-properties-common
sudo add-apt-repository ppa:llvm/llvm-17
sudo apt update
sudo apt install llvm-17 clang-17 -y
sudo update-alternatives --install /usr/bin/llvm-config llvm-config /usr/bin/llvm-config-17 100
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-17 100
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-17 100 -->
sudo apt install build-essential subversion
git clone https://github.com/llvm/llvm-project.git
cd llvm-project
git checkout 17.0.0git
cd llvm
mkdir build
cd build
export CXX=/usr/bin/g++
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release ..
make -j$(nproc)
sudo make install
llvm-config --version



llvm-config --version
clang --version
./scripts/prereqs.sh
./scripts/build.sh

mkdir build
cd build
sudo nano CMakeLists.txt
set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)
sudo chown -R $USER:$USER /home/wendell/tnn-miner





sudo cmake ..
sudo make -j $(nproc)



sudo apt-get install libboost-all-dev
sudo apt install libcurl4-openssl-dev
sudo apt install libssl-dev
sudo apt install gettext libayatana-appindicator3-dev

./spectre-miner --mining-address=spr.tw-pool.com:14001 --devfund=spectre:qpptxd85y9w8e3alvl62y46t0f2sgvxdl095440f4jcmn35sx2ud7c3dmh77k




# TNN MINER
https://github.com/Tritonn204/tnn-miner

sudo apt install libboost-all-dev

./Tnn-miner --spectre --stratum --daemon-address spectre.cedric-crispin.com --port 4364 --wallet spectre:qpptxd85y9w8e3alvl62y46t0f2sgvxdl095440f4jcmn35sx2ud7c3dmh77k --worker-name wendell


./Tnn-miner --spectre --stratum --daemon-address spr.tw-pool.com --port 14001 --wallet spectre:qpptxd85y9w8e3alvl62y46t0f2sgvxdl095440f4jcmn35sx2ud7c3dmh77k --worker-name wendell

./spectre-miner --mining-address spectre:qpptxd85y9w8e3alvl62y46t0f2sgvxdl095440f4jcmn35sx2ud7c3dmh77k