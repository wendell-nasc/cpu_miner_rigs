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
mkdir build
cd build
cmake ..
make -j $(nproc)



sudo apt-get install libboost-all-dev
sudo apt install libcurl4-openssl-dev
sudo apt install libssl-dev
sudo apt install gettext libayatana-appindicator3-dev

./spectre-miner --mining-address=spr.tw-pool.com:14001 --devfund=spectre:qpptxd85y9w8e3alvl62y46t0f2sgvxdl095440f4jcmn35sx2ud7c3dmh77k


./Tnn-miner --spectre --stratum --daemon-address spectre.cedric-crispin.com --port 4364 --wallet spectre:qpptxd85y9w8e3alvl62y46t0f2sgvxdl095440f4jcmn35sx2ud7c3dmh77k --worker-name wendell


./Tnn-miner --spectre --stratum --daemon-address spr.tw-pool.com --port 14001 --wallet spectre:qpptxd85y9w8e3alvl62y46t0f2sgvxdl095440f4jcmn35sx2ud7c3dmh77k --worker-name wendell

./spectre-miner --mining-address spectre:qpptxd85y9w8e3alvl62y46t0f2sgvxdl095440f4jcmn35sx2ud7c3dmh77k