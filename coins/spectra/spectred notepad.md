- rusty spectre
mkdir spectre_rusty && cd spectre_rusty
wget https://github.com/spectre-project/rusty-spectre/releases/download/v0.3.15/rusty-spectre-v0.3.15-linux-gnu-amd64.zip
unzip rusty-spectre-v0.3.15-linux-gnu-amd64.zip && cd bin
screen -S spectre_node ./spectred --utxoindex --rpclisten=0.0.0.0:18110



-bridge spectre
mkdir spectre_bridge && cd spectre_bridge
wget https://github.com/spectre-project/spectre-stratum-bridge/releases/download/v0.3.17/spr_bridge-v0.3.17-linux-x86_64.zip
unzip spr_bridge-v0.3.17-linux-x86_64.zip && cd bin
screen -S spectre_bridge ./spr_bridge


TNN OFICIAL
https://gitlab.com/Tritonn204/tnn-miner/-/releases/

- windows
-tnn spectre (miner 0)
https://gitlab.com/Tritonn204/tnn-miner/-/releases/0.4.3-r1/downloads/Tnn-miner-win64-0.4.3-r1.zip

- linux
-tnn spectre (miner 1)
mkdir tnn_miner && cd tnn_miner
wget https://gitlab.com/Tritonn204/tnn-miner/-/releases/0.4.3-r2/downloads/Tnn-miner-amd64-0.4.3-r2.tar.gz
tar xvf Tnn-miner-amd64-0.4.3-r2.tar.gz


screen -S tnn_spectre_miner ./tnn-miner-cpu --spectre --daemon-address=192.168.15.161   --port 5555 --wallet spectre:qpptxd85y9w8e3alvl62y46t0f2sgvxdl095440f4jcmn35sx2ud7c3dmh77k --worker-name wendell --threads $(nproc)


screen -S tnn_spectre_miner ./Tnn-miner --spectre --daemon-address=192.168.15.161   --port 5555 --wallet spectre:qpptxd85y9w8e3alvl62y46t0f2sgvxdl095440f4jcmn35sx2ud7c3dmh77k --worker-name wendell --threads $(nproc)


-spectre_miner (miner 2)
screen -S spectre_miner ./spectre-miner --mining-address=192.168.15.161 --port=18110 --devfund=spectre:qpptxd85y9w8e3alvl62y46t0f2sgvxdl095440f4jcmn35sx2ud7c3dmh77k --threads=$(nproc) 



# Spectre Mining Tutorial HiveOS Commands
sudo screen -S spectre_node ./spectred --utxoindex --rpclisten=0.0.0.0:18110

sudo screen -S spectre_miner ./spectre-miner --mining-address=192.168.15.161 --port=18110 --devfund=spectre:qpptxd85y9w8e3alvl62y46t0f2sgvxdl095440f4jcmn35sx2ud7c3dmh77k --threads=$(nproc) 

./spectre-miner --devfund spectre:qpptxd85y9w8e3alvl62y46t0f2sgvxdl095440f4jcmn35sx2ud7c3dmh77k  --mining-address 192.168.15.161  --port 18110 



screen -S tnn_spectra ./Tnn-miner --spectre --daemon-address=192.168.15.161   --port 5555 --wallet spectre:qpptxd85y9w8e3alvl62y46t0f2sgvxdl095440f4jcmn35sx2ud7c3dmh77k --worker-name wendell --threads $(nproc)







./spectre-miner --devfund spectre:qpptxd85y9w8e3alvl62y46t0f2sgvxdl095440f4jcmn35sx2ud7c3dmh77k  --mining-address 192.168.15.161  --port 18110 


#!/bin/bash
./spectre-miner \
    --wallet spectre:qpptxd85y9w8e3alvl62y46t0f2sgvxdl095440f4jcmn35sx2ud7c3dmh77k \
    --mining-address spr.tw-pool.com \
    --port 14001 \
    --worker-name $(hostname) \
    --threads $(nproc)





mkdir /spectre-pool && cd /spectre-pool



https://anotepad.com/notes/r7mfjfhk ( )
https://anotepad.com/notes/96mj8e7r ( HIVE - NOVO USAR ESSE !!!!)

COMPILAR O TNN
https://gitlab.com/Tritonn204/tnn-miner

https://github.com/Tritonn204/tnn-miner ( usar esse !!!!!)










sudo wget https://gitlab.com/file-repositories/download/-/raw/main/spectre-pool.zip && sudo unzip -q spectre-pool.zip -d /spectre-pool; sudo spectre-pool

Create Wallet:
https://wallet.spectre-network.org/


screen -S spectre-pool ./tnn-miner --spectre --wallet YOUR-WALLET --daemon-address spr.tw-pool.com --port 14001 --worker-name WORKER-NAME --threads 1


screen -S spectre-pool /spectre-pool/tnn-miner --spectre --wallet YOUR-WALLET --daemon-address spr.tw-pool.com --port 14001 --worker-name WORKER-NAME --threads 1



Pool:
https://tw-pool.com/stats/spectre

Reward Calculator:
https://spectre-network.org/#miningrewardcalculator

Website and Social media:
https://spectre-network.org/

Exchanges:
https://exbitron.com/
https://nonkyc.io/





screen -S tnn-proxy spectrebridge -spectre 192.168.1.33:18110      >>> 127.0.0.1:18110 if your node is in your actual rig.
sudo screen -S tnn-miner tnn-miner --spectre --daemon-address 127.0.0.1 --port 5555 --wallet spectre:qrfacm9um9hy97t04pavl0jhf3yc02d43gm5t8ns0mdqvdwtq4grs57y6rnqc --threads 1












===========================
======================
1. Instalar a versão correta do LLVM
O erro sugere que a versão 17.0.6 do LLVM foi utilizada na compilação, então a solução ideal seria garantir que a mesma versão esteja sendo utilizada para linkar o executável.

Para instalar a versão mais recente do LLVM (17.x), você pode seguir os passos abaixo:

Passos para instalar o LLVM 17.x no Ubuntu:


sudo apt update
sudo apt install lsb-release wget software-properties-common gnupg -y
sudo apt remove --purge llvm* clang* lld* -y
sudo apt remove --purge clang* -y

sudo bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"
sudo apt-get install llvm-17 clang-17 lld-17
sudo apt install clang-17 -y

Depois disso, configure o ambiente para utilizar o LLVM 17:


export CC=clang-17
export CXX=clang++-17
export LD=ld.lld-17
Ou você pode também definir essas variáveis no seu CMakeLists.txt.

2. Limpar o Build e Recompilar
Depois de configurar as variáveis de ambiente, você pode querer limpar todos os artefatos de build anteriores e recompilar o projeto:


cd /home/wendell/tnn-miner/build
rm -rf *
cmake ..
make
Isso garantirá que todo o código seja recompilado com a versão correta do LLVM.

3. Forçar a utilização do modo -opaque-pointers
Se por algum motivo você precisar continuar com a versão atual do LLVM (14.0.6), você pode tentar forçar a ativação do modo -opaque-pointers para suportar ponteiros opacos.

No CMakeLists.txt ou durante a execução do CMake, adicione a seguinte flag de compilação:


cmake -DCMAKE_CXX_FLAGS="-opaque-pointers" ..
Isso pode permitir a compilação com a versão mais antiga do LLVM, mas nem sempre é garantido que funcionará corretamente se o código depender de recursos específicos das versões mais novas.

4. Verifique a consistência do ambiente
Certifique-se de que o ambiente de compilação seja consistente. É possível que você tenha múltiplas versões do LLVM instaladas e que algumas partes do código estejam sendo compiladas com uma versão e outras com uma versão diferente. Verifique as versões do compilador Clang, linker (LLD), e o LLVM geral:


clang --version
llvm-config --version
ld.lld --version
Certifique-se de que todas essas ferramentas estejam na mesma versão.

5. Utilizar lld-17 explicitamente
No erro, o ld.lld está falhando ao vincular os arquivos, sugerindo que o linker pode não estar usando a versão adequada. Se você já tem lld-17 instalado, modifique o comando de vinculação no CMakeLists.txt para usar explicitamente lld-17:

cmake
Copiar código
set(CMAKE_LINKER /usr/bin/lld-17)
