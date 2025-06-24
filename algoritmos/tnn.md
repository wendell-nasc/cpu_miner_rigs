# TNN

-BinaryExpr
https://github.com/BinaryExpr/spectre-miner









- separado
mkdir /home/wendell/tnn
cd /home/wendell/tnn
sudo wget https://github.com/BinaryExpr/spectre-miner/releases/download/v0.6.26/spectre_miner_x64-v0.6.26_linux.tar.gz
sudo tar xvf spectre_miner_x64-v0.6.26_linux.tar.gz


- completo 
mkdir /home/wendell/tnn && cd /home/wendell/tnn && sudo wget https://github.com/BinaryExpr/spectre-miner/releases/download/v0.6.26/spectre_miner_x64-v0.6.26_linux.tar.gz && sudo tar xvf spectre_miner_x64-v0.6.26_linux.tar.gz

cd /home/wendell/tnn/spectre_miner_x64


# DERO
sudo /home/wendell/tnn/spectre_miner_x64/spectre-miner --dero --stratum --daemon-address dero-node-gustavogerman.mysrv.cloud --port 10100 --wallet spectre:dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z --worker-name wendell --threads $(nproc) --dev-fee 1



sudo /home/wendell/tnn/spectre_miner_x64/spectre-miner --dero --stratum --daemon-address dero-node-gustavogerman.mysrv.cloud --port 10100 --wallet spectre:dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z --worker-name wendell --threads $(nproc) --dev-fee 1

# SPECTRA
sudo /home/wendell/tnn/spectre_miner_x64/spectre-miner -d spr.tw-pool.com:14001 -w spectre:qpptxd85y9w8e3alvl62y46t0f2sgvxdl095440f4jcmn35sx2ud7c3dmh77k  -t $(nproc) --watchdog 


# WINDOWS
@echo off
cd /d "%~dp0"
Tnn-miner-0.4.1.exe --spectre --stratum --daemon-address spectre.cedric-crispin.com --port 4364 --wallet spectre:qqsnnyky6702ty7ar6fkx6es5gddaxnzehp4n9fkjkurdnprh4576vv6n3gsn --worker-name i7laptop --threads 4
pause


# compilar

dpkg-query -L libstdc++-11-dev | grep libstdc++

export LD_LIBRARY_PATH=/usr/lib/gcc/x86_64-linux-gnu/11:$LD_LIBRARY_PATH

sudo cmake .. -DCMAKE_EXE_LINKER_FLAGS="-L/usr/lib/gcc/x86_64-linux-gnu/11"
ou
sudo cmake .. -DCMAKE_CXX_COMPILER=g++
make




