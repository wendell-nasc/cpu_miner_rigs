-Wallet
Xeggex
Cfb8Bmv52q92vvrUCk5i76xfavia9vL3z
Cfb8Bmv52q92vvrUCk5i76xfavia9vL3z

oficial
Dzdbr5d8PVafQwvEkEwfNde7mFKNDaDSv
271605

https://xdag.org/workers?wallet_address=Cfb8Bmv52q92vvrUCk5i76xfavia9vL3z




# XMRIG FORK PARA XDAG
https://github.com/FSOL-XDAG/xmrig-4-xdag
https://github.com/FSOL-XDAG/xmrig-4-xdag/releases/tag/v6.19.3


🔹Ubuntu 20.04
mkdir temp_x4x && cd temp_x4x/ && wget https://github.com/FSOL-XDAG/xmrig-4-xdag/releases/download/v.6.20.0/x4x-6.20.0-linux-ubuntu_20.04-x64.tar.gz && tar -xvf x4x-6.20.0-linux-ubuntu_20.04-x64.tar.gz && cp xmrig-4-xdag/xmrig-4-xdag .. && cd .. && rm -r temp_x4x

🔹Ubuntu 22.04
sudo mkdir /home/wendell/xdag && cd /home/wendell/xdag && sudo wget https://github.com/FSOL-XDAG/xmrig-4-xdag/releases/download/v.6.20.0/x4x-6.20.0-linux-ubuntu_22.04-x64.tar.gz && sudo tar -xvf x4x-6.20.0-linux-ubuntu_22.04-x64.tar.gz && sudo cp xmrig-4-xdag/xmrig-4-xdag ..


/home/wendell/xdag/xmrig-4-xdag/xmrig-4-xdag
/home/wendell/xdag/xmrig-4-xdag/config.json


screen -S xmr_xdag /home/wendell/xdag/xmrig-4-xdag/xmrig-4-xdag -algo rx/xdag -o stratum.xdag.org:23656 -u Dzdbr5d8PVafQwvEkEwfNde7mFKNDaDSv.$(hostname) -rig-id $(hostname) -t $(nproc)  "http": { "enabled": true, "host": "127.0.0.1", "port": 37329, "access-token": "auth", "restricted": false } "donate-level": 1


screen -S xmr_xdag ./xmrig-4-xdag -algo rx/xdag -o stratum.xdag.org:23656 -u Dzdbr5d8PVafQwvEkEwfNde7mFKNDaDSv.$(hostname) -rig-id $(hostname) -pass $(hostname) -t $(nproc)  



screen -S xmr_xdag ./xmrig-4-xdag -algo rx/xdag -o stratum.xdag.org:23656 -u Dzdbr5d8PVafQwvEkEwfNde7mFKNDaDSv.$(hostname) -rig-id $(hostname) -t $(nproc)  "donate-level": 1




screen -S deroluna-miner /home/wendell/dero_linux_amd64/deroluna-miner --xmrig -d derosolo.bernacripto.com.br:10100 -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -t $(nproc)


screen -S xmr_xdag /home/wendell/xdag/xmrig-4-xdag/xmrig-4-xdag -algo rx/xdag -o stratum.xdag.org:23656 -u Dzdbr5d8PVafQwvEkEwfNde7mFKNDaDSv.$(hostname) -rig-id $(hostname) -t $(nproc)  "http": { "enabled": true, "host": "127.0.0.1", "port": 37329, "access-token": "auth", "restricted": false } "donate-level": 1




# XDAG GPU Miner v0.3.0 Release
https://github.com/jonano614/DaggerGpuMiner
sudo wget https://github.com/jonano614/DaggerGpuMiner

sudo apt install libboost-all-dev

./GpuMiner -a Dzdbr5d8PVafQwvEkEwfNde7mFKNDaDSv.$(hostname) -p stratum.xdag.org:23656 

sudo apt install libboost-all-dev


1) GPU benchmark: ./xdag-gpu -G -M

2) GPU mining: ./xdag-gpu -G -a Dzdbr5d8PVafQwvEkEwfNde7mFKNDaDSv -p stratum.xdag.org:23656 

3) CPU mining: ./xdag-gpu -cpu -a <WALLET_ADDRESS> -p <POOL_ADDRESS> -t 8





screen -S xmr_xdag ./xmrig-4-xdag -algo rx/xdag -o stratum.xdag.org:23656 -u Dzdbr5d8PVafQwvEkEwfNde7mFKNDaDSv.$(hostname) -rig-id $(hostname) -t $(nproc)  "donate-level": 1