

sudo systemctl daemon-reload && sudo systemctl stop xdag_gustavo.service
sudo systemctl daemon-reload && sudo systemctl restart xdag_gustavo.service


sudo systemctl stop xdag_gustavo.service
sudo systemctl start xdag_gustavo.service
sudo systemctl status xdag_gustavo.service


sudo tail -f /var/log/control_miner.log
sudo tail -f /var/log/start-deroluna-xdag_gustavo.log
sudo tail -f /var/log/start-deroluna-hansen.log



# dero_integrator
<!-- screen -S dero ./derod-linux-amd64 --rpc-bind=192.168.15.168:10102
 -->

sudo screen -S dero_integrator_wendell ./derod-linux-amd64 --integrator-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z 


screen -S deroluna-miner /home/wendell/dero_linux_amd64/deroluna-miner -d 192.168.1.168:10100 -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -t $(nproc)



# Dero github
Mining DERO
Downloading Miner
Download here: https://github.com/deroproject/derohe/releases




# Gustavo German Node
Oficial
dero-node-gustavogerman.mysrv.cloud

-config
or solo mining either:
connect to port 10100 and use just the wallet address
or
connect to port 10300 and use walletaddress@solo
 
@solo instructs the pool node to treat as solo but you can track statistics through @James Bot 
10100 connection is a straight "standard" solo mining connection without statistics


discord
https://discord.com/invite/XDff3htSec

-pool
dero-node-gustavogerman.mysrv.cloud:10300

-solo
dero-node-gustavogerman.mysrv.cloud:10100
dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z@solo




screen -S deroluna-miner /home/wendell/dero_linux_amd64/deroluna-miner --xmrig -d dero-node-gustavogerman.mysrv.cloud:10100 -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z@solo -t $(nproc)


./astrominer -w "dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z@solo" -r dero-node-gustavogerman.mysrv.cloud:10100 -m $(nproc)




screen -S deroluna-miner /home/wendell/dero_linux_amd64/deroluna-miner --xmrig -d community-pools.mysrv.cloud:10300 -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z@solo -t $(nproc)

# lolMiner
https://github.com/Lolliedieb/lolMiner-releases

wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.91/lolMiner_v1.91_Lin64.tar.gz

./lolMiner --algo DeroHash --pool derosolo.bernacripto.com.br:10100 --user dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z


# Astronv

./astronv -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -r derosolo.bernacripto.com.br:10100


# Astrominer 
https://github.com/dero-am/astrobwt-miner


- android
wget https://github.com/dero-am/astrobwt-miner/releases/download/V1.9.2.R5/astrominer-V1.9.2.R5_aarch64_linux.tar.gz
tar xvf astrominer-V1.9.2.R5_aarch64_linux.tar.gz

./astrominer -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -r derosolo.bernacripto.com.br:10100 -m $(nproc)
-t 12 -intensity 10


# Hansen derominer
https://github.com/Hansen333/Hansen33-s-DERO-Miner

-daemon-rpc-address derosolo.bernacripto.com.br:10100 -wallet-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -mining-threads $(nproc) -turbo


# Android
sudo wget https://github.com/deroproject/derohe/releases/latest/download/dero_linux_amd64.tar.gz
sudo tar xvzf dero_linux_amd64.tar.gz
cd dero_linux_amd64

sudo wget https://github.com/DeroLuna/dero-miner/releases/download/v1.13-beta/deroluna-miner-linux-amd64.tar.gz
sudo tar -xvf deroluna-miner-linux-amd64.tar.gz

/deroluna-miner --xmrig -d derosolo.bernacripto.com.br:10100 -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -t $(nproc)


./derod-linux-arm64 --rpc-bind derosolo.bernacripto.com.br:10100 --mining-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z

--wallet-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z \
--mining-threads $(nproc) -- derosolo.bernacripto.com.br:10100



wget https://github.com/Hansen333/Hansen33-s-DERO-Miner/releases/latest/download/hansen33s-dero-miner-android-arm64.tar.gz

wget https://github.com/Hansen333/derohe-Hansen33-mod/releases/download/Release140-Jan24/dero_linux_arm64_3.5.3-140.DEROHE.STARGATE+13062023.tar.gz


# Dero luna instrucoes
https://github.com/DeroLuna/dero-miner/releases

Linux & Windows
If you use config.json for xmrig then find the "http" block and change it to this:

    "http": {
        "enabled": true,
        "host": "127.0.0.1",
        "port": 37329,
        "access-token": "auth",
        "restricted": false
    },
If you use command line options for xmrig then add this to xmrig options:
--http-port 37329 --http-no-restricted --http-access-token auth

Run xmrig
Run deroluna-miner with the additional option --xmrig

HiveOS
Create a Flight Sheet with xmrig and deroluna-miner in it.

Add this line in the Extra config arguments for xmrig:
"http": { "enabled": true, "host": "127.0.0.1", "port": 37329, "access-token": "auth", "restricted": false }

Add --xmrig in the Extra config arguments for deroluna-miner


# wallet

pagar menos taxa carteira gui
comandos:
set = visualizar atual
set ringsize 2 
set priority 1



nome: wendell.db
pass: Dud@4321

Wallet address : dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z
Registration TX : 0100000115416c0ab3456d56a32b0e5cd3966593db9b3808dbc36277f08cf9cdb3fd08a6000dbd5fb6ebd9cdd166cb54435f59e5313e1d7b0ea625616bb10b1727aaa96ba51f215e6af8da92bc969fc4a2683422dfee77d3ffffb5b34ab67f07c57941e794

deuteronomio obeso nudista fominha avexar liturgico fijiano cozinheiro geossinclinal pintura difuso saturno fotossintese respeito enrugar rijo coexistir ogiva tagarelice pseudopode buffer rolo arquivo pumba cozinheiro



- Transação 9.0 - 02/10
Enter Destination Address: deroi1qyzlxxgq2weyqlxg5u4tkng2lf5rktwanqhse2hwm577ps22zv2x2q9pvfz92xmusqwhk7nlsuvsredz55
02/10 11:45:29  INFO    wallet  Destination port is integrated in address.      {"dst port": 8971202873895388953}
Enter amount to transfer in DERO (current balance 9.44698): 9.0
Confirm Transaction (y/N)y
02/10 11:45:40  INFO    wallet  Dispatched tx   {"txid": "70cce801fb220fbbd9b36ddf7925164786e20051c462553c9be5e6a360260e78"}



dero1qy2 4369674/4369674 9.54879  >>> 5
Enter current wallet password(8):
Enter Destination Address: deroi1qyzlxxgq2weyqlxg5u4tkng2lf5rktwanqhse2hwm577ps22zv2x2q9pvfz92xmusqwhk7nlsuvsredz55
02/10 11:36:58  INFO    wallet  Destination port is integrated in address.      {"dst port": 8971202873895388953}
Enter amount to transfer in DERO (current balance 9.54879): 0.1
Confirm Transaction (y/N)y
02/10 11:37:21  INFO    wallet  Dispatched tx   {"txid": "fd5f12bf2960faabb6d8155ac26803583771820a9faf34e6f2883c0bbe4fa575"}



# Dero pool comunnity
https://community-pools.mysrv.cloud/
community-pools.mysrv.cloud:10300

dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z
login: 2efc

# HANSEN
wget https://github.com/Hansen333/Hansen33-s-DERO-Miner/releases/latest/download/hansen33s-dero-miner-linux-amd64.tar.gz && tar xvf hansen33s-dero-miner-linux-amd64.tar.gz && sudo systemctl stop deroluna.service

miner stop (HIVEOS)

wget https://github.com/Hansen333/Hansen33-s-DERO-Miner/releases/latest/download/hansen33s-dero-miner-linux-amd64.tar.gz && tar xvf hansen33s-dero-miner-linux-amd64.tar.gz && sudo screen -S miner ./hansen33s-dero-miner-linux-amd64 -daemon-rpc-address derosolo.bernacripto.com.br:10100 -wallet-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -turbo -workers $(nproc)


# berna hansen - okkkkkkkkkkkkkkkkkkkkkkkk
wget https://github.com/Hansen333/Hansen33-s-DERO-Miner/releases/latest/download/hansen33s-dero-miner-linux-amd64.tar.gz && tar xvf hansen33s-dero-miner-linux-amd64.tar.gz


sudo screen -S miner ./hansen33s-dero-miner-linux-amd64 -daemon-rpc-address derosolo.bernacripto.com.br:10100 -wallet-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -turbo -workers $(nproc)

# dero comunity
community-pools.mysrv.cloud:10300
wget https://github.com/Hansen333/Hansen33-s-DERO-Miner/releases/latest/download/hansen33s-dero-miner-linux-amd64.tar.gz && tar xvf hansen33s-dero-miner-linux-amd64.tar.gz && sudo screen -S miner ./hansen33s-dero-miner-linux-amd64 -wallet-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -turbo -workers $(nproc)

sudo screen -S dero_hansen ./hansen33s-dero-miner-linux-amd64 -daemon-rpc-address 192.168.1.130:10100 -wallet-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -turbo

# ANDROID
./hansen33s-dero-miner-android-arm64  -daemon-rpc-address derosolo.bernacripto.com.br:10100 -wallet-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -turbo -workers $(nproc) -worker-start-delay 5


# X5450 XEON
sudo screen -S miner ./dero-miner-linux-amd64 --wallet-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z --mining-threads $(nproc) --daemon-rpc-address derosolo.bernacripto.com.br:10100

sudo screen -S dero_miner ./dero-miner-linux-amd64 --wallet-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z --mining-threads $(nproc) --daemon-rpc-address 192.168.1.130:10100


screen -S deroluna-miner /home/wendell/dero_linux_amd64/deroluna-miner --xmrig -d derosolo.bernacripto.com.br:10100 -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -t $(nproc)



sudo screen -S dero-node ./derod-linux-amd64
sudo screen -S dero-node ./derod-linux-amd64 --fastsync 

sudo screen -S dero-rsync rsync --inplace --port=2048 -av rsync://141.95.86.80/DEROblockchainDB/mainnet ./

rsync --inplace --port=2048 -av rsync://141.95.86.80/DEROblockchainDB/mainnet ./

rsync --inplace --port=2048 -av rsync://141.95.86.80/DEROblockchainDB/mainnet ./

sudo systemctl disable scash.service
sudo systemctl stop scash.service

# local

screen -S deroluna-miner ./deroluna-miner --xmrig -d derosolo.bernacripto.com.br:10100 -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -t $(nproc)


screen -S deroluna-miner /home/wendell/dero_linux_amd64/deroluna-miner --xmrig -d 192.168.1.130:10100 -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -t $(nproc)

screen -S deroluna-miner ./deroluna-miner -d 192.168.15.130:10100 -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z 


screen -S xmrig-miner /opt/xmrig/xmrig -o stratum+tcp://br.zephyr.herominers.com:1123 -u "ZEPHYR2Gz72Xzthz6gY3d7hSRWryxyhmEJK6RZhebDjqfYb34c3rHiSH2zZKTkgWdd4osMTcX6EGHZkpBDPbS8nrL4gq8DsefM72c.$(hostname)"  --algo=randomx --coin=XMR  --threads=$(nproc) --donate-level 1 --http-port 37329 --http-access-token auth --http-host 127.0.0.1 --http-no-restricted



# berna
screen -S deroluna-miner /home/wendell/dero_linux_amd64/deroluna-miner --xmrig -d derosolo.bernacripto.com.br:10100 -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -t $(nproc)

screen -S xmrig-miner /opt/xmrig/xmrig -o stratum+tcp://randomxmonero.auto.nicehash.com:9200 -u "NHbQdkTWYaaCs85LgLChnktWpG9bxKnMU72s.$(hostname)" --algo=randomx --coin=XMR  --threads=$(nproc) --donate-level 1 --http-port 37329 --http-access-token auth --http-host 127.0.0.1 --http-no-restricted

screen -S xmrig-miner /opt/xmrig/xmrig -o stratum+tcp://br.zephyr.herominers.com:1123 -u "ZEPHYR2Gz72Xzthz6gY3d7hSRWryxyhmEJK6RZhebDjqfYb34c3rHiSH2zZKTkgWdd4osMTcX6EGHZkpBDPbS8nrL4gq8DsefM72c.$(hostname)"  --algo=randomx --coin=XMR  --threads=$(nproc) --donate-level 1 --http-port 37329 --http-access-token auth --http-host 127.0.0.1 --http-no-restricted



### Oficial NODE
https://docs.dero.io/Getting%20Started/Node-linux/#decoding-dero-prompt






sudo screen -S dero-rsync rsync --inplace --port=2048 -av rsync://141.95.86.80/DEROblockchainDB/mainnet ./



sudo screen -S dero-integrator  ./derod-linux-amd64 --rpc-bind 127.0.0.1:20209 --integrator-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z



 /home/wendell/dero_linux_amd64/derod-linux-amd64 --rpc-bind 127.0.0.1:20209 --mining-address SEU_ENDEREÇO_DE_CARTEIRA



sudo screen -S deroluna-fast  /home/wendell/dero_linux_amd64/derod-linux-amd64 --fastsync 

screen -S deroluna-bridge  /home/wendell/dero_linux_amd64/derod-linux-amd64 --integrator-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z --node-tag=node_dero_wendell


# local
screen -S deroluna-miner /home/wendell/dero_linux_amd64/deroluna-miner --xmrig -d 192.168.1.130:10100 -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -t $(nproc)

# berna
screen -S deroluna-miner /home/wendell/dero_linux_amd64/deroluna-miner --xmrig -d derosolo.bernacripto.com.br:10100 -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -t $(nproc)



### XMRIG CORRIGIDO
screen -S xmrig-miner /opt/xmrig/xmrig -o stratum+tcp://randomxmonero.auto.nicehash.com:9200 -u "NHbQdkTWYaaCs85LgLChnktWpG9bxKnMU72s.$(hostname)"  --algo=randomx --coin=XMR  --threads=$(nproc)




# Dual mining

screen -S deroluna-miner ./deroluna-miner -d 192.168.15.161:10100 -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -t $(nproc)


https://github.com/DeroLuna/dero-miner/releases/download/v1.13-beta/deroluna-v1.13_beta_hiveos.tar.gz

-Corrigido
screen -S deroluna-miner /home/wendell/dero_linux_amd64/deroluna-miner --xmrig -d derosolo.bernacripto.com.br:10100 -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -t $(nproc) 


screen -S deroluna-miner ./deroluna-miner --xmrig -d derosolo.bernacripto.com.br:10100 -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -t $(nproc)



screen -S dero_bridge /home/wendell/dero_linux_amd64/derod-linux-amd64 --fastsync


--Corrigido
screen -S xmr_nicehash /opt/xmrig/xmrig -o stratum+tcp://randomxmonero.auto.nicehash.com:9200 -u "NHbQdkTWYaaCs85LgLChnktWpG9bxKnMU72s.$(hostname)" --algo=randomx --donate-level 1 --http-port 37329 --http-access-token auth --http-host 127.0.0.1 --http-no-restricted





Sem thre



# releases Dero
-> Luna
https://github.com/DeroLuna/dero-miner/releases/


screen -S dero_integrator ./derod-linux-amd64 --integrator-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z --node-tag=node_dero  


/opt/xmrig/xmrig -o stratum+tcp://randomxmonero.auto.nicehash.com:9200 -u NHbQdkTWYaaCs85LgLChnktWpG9bxKnMU72s.arthur   --algo=randomx --coin=XMR 


# dero_integrator
screen -S dero ./derod-linux-amd64 --rpc-bind=192.168.15.168:10102



sudo screen -S dero_integrator_wendell ./derod-linux-amd64 --integrator-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z 






# dero luna
screen -S deroluna-miner ./deroluna-miner -d 192.168.1.168:10100 -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -t $(nproc)

ou berna

screen -S deroluna-miner ./deroluna-miner -d 192.168.1.168:10100 -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -t $(nproc) --xmrig


screen -S xmr_nicehash /opt/xmrig/xmrig -o stratum+tcp://randomxmonero.auto.nicehash.com:9200 -u NHbQdkTWYaaCs85LgLChnktWpG9bxKnMU72s.arthur -t $(nproc)  --algo=randomx  "http": { "enabled": true, "host": "127.0.0.1", "port": 37329, "access-token": "auth", "restricted": false } "donate-level": 1




screen -S derod ./dero-miner-linux-amd64


# Oficial
-Linux node
https://docs.dero.io/getting-started/linux-node.html#decoding-dero-prompt

- instalação
sudo apt install xfsprogs ntpdate

fallocate -l 100G dataFsFile
mkfs.xfs -f  -i maxpct=100 -m crc=0 -i size=256 -b size=512  dataFsFile
mkdir dNodedata ; chmod -R 777 dNodedata
sudo mount dataFsFile dNodedata
cd dNodedata      // Download DERO software and sync in this directory

sudo apt install ntpdate
sudo ntpdate  pool.ntp.org
sudo EDITOR=nano crontab -e
30 * * * * /usr/sbin/ntpdate pool.ntp.org >> /var/log/ntpdate.log 2>&1


# instalação
sudo  wget https://github.com/deroproject/derohe/releases/latest/download/dero_linux_amd64.tar.gz
sudo tar xvzf dero_linux_amd64.tar.gz
cd dero_linux_amd64 
sudo screen -S dero-node /home/wendell/dNodedata/dero_linux_amd64/derod-linux-amd64 --fastsync 




sudo wget https://github.com/deroproject/derohe/releases/latest/download/dero_linux_amd64.tar.gz
sudo tar xvzf dero_linux_amd64.tar.gz
cd dero_linux_amd64

sudo wget https://github.com/DeroLuna/dero-miner/releases/download/v1.13-beta/deroluna-miner-linux-amd64.tar.gz
sudo tar -xvf deroluna-miner-linux-amd64.tar.gz





-dero
https://github.com/Hansen333/derohe-Hansen33-mod/releases/download/Release140-Jan24/dero_linux_amd64_3.5.3-140.DEROHE.STARGATE+13062023.tar.gz
sudo tar -xvf dero_linux_amd64_3.5.3-140.DEROHE.STARGATE+13062023.tar.gz
cd dero_linux_amd64

e por ultimo dero luna

wget https://github.com/DeroLuna/dero-miner/releases/download/v1.13-beta/deroluna-miner-linux-amd64.tar.gz
sudo tar -xvf deroluna-miner-linux-amd64.tar.gz



# wallet

nome: wendell.db
pass: Dud@4321

Wallet address : dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z
Registration TX : 0100000115416c0ab3456d56a32b0e5cd3966593db9b3808dbc36277f08cf9cdb3fd08a6000dbd5fb6ebd9cdd166cb54435f59e5313e1d7b0ea625616bb10b1727aaa96ba51f215e6af8da92bc969fc4a2683422dfee77d3ffffb5b34ab67f07c57941e794

deuteronomio obeso nudista fominha avexar liturgico fijiano cozinheiro geossinclinal pintura difuso saturno fotossintese respeito enrugar rijo coexistir ogiva tagarelice pseudopode buffer rolo arquivo pumba cozinheiro














Wallet address : dero1qyg5alz5trr9jt4xw90fqqtgn0eyt7xczfsg2ycdmn6ugu35ttjhqqgx50tsn 
Registration TX : 01000001114efc5458c6592ea6715e9001689bf245f8d8126085130ddcf5c472345ae57001052c4a7a0f5bb566d2472df014b1d74171c95e23950ac87515a41da2e1d7a1e401a9e8d3fce088c5cbe18bbb8a9ea8c29c9ebf2d7e696c5af72b5d040668f17a

Palavras: scenic cajun toolbox sleepless smash fuzzy stick hawk distance onboard elite bumper empty gulp smash candy thorn yields erase lullaby husband annoyed itinerary hotel itinerary

dero1qyg 0/341613 0.00000  Account Unregistered  >>> 4
Wallet address : dero1qyg5alz5trr9jt4xw90fqqtgn0eyt7xczfsg2ycdmn6ugu35ttjhqqgx50tsn is going to be registered. Please wait till the account is registered.This is a pre-condition POW for using the online chain.This will take a couple of minutes. Please wait....

Registration TXID 00000015ae78e8d1bad646f12f953a1dc42d7d957b1a30d23119d47dec9eb646
registration tx dispatched successfully
Menu:



# Engram
https://github.com/DEROFDN/Engram/releases

sudo apt install build-essential libxcursor-dev libxrandr-dev libxinerama-dev libxi-dev libxxf86vm-dev libgl1-mesa-dev libglu1-mesa-dev xorg-dev




1. Instalar dependências do sistema
Primeiro, instale as ferramentas essenciais de compilação e bibliotecas necessárias para que tudo funcione corretamente no Ubuntu:


sudo apt update
sudo apt install build-essential libxcursor-dev libxrandr-dev libxinerama-dev libxi-dev libxxf86vm-dev libgl1-mesa-dev libglu1-mesa-dev xorg-dev

Essas bibliotecas são necessárias para gerenciar janelas e gráficos no Linux, especialmente para o uso com glfw, que é uma biblioteca de interface gráfica.

2. Instalar o Go
Se você ainda não tiver o Go instalado, você pode fazer isso com os seguintes comandos:


sudo apt install golang
Depois, confirme se o Go foi instalado corretamente verificando a versão:


ou manuak


wget https://go.dev/dl/go1.23.1.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.23.1.linux-amd64.tar.gz


go version


3. Configurar o ambiente Go
Certifique-se de que seu ambiente Go está configurado corretamente. Adicione o caminho do Go no arquivo .bashrc (ou .zshrc se você usar o Zsh) e defina seu $GOPATH:


echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
echo "export GOPATH=$HOME/go" >> ~/.bashrc
source ~/.bashrc

4. Clonar o repositório do Engram
Clone o repositório Engram para seu ambiente local:


git clone https://github.com/DEROFDN/Engram.git
cd Engram




5. Instalar as dependências Go
Com o repositório clonado, agora você pode baixar todas as dependências listadas no README do projeto. Execute os seguintes comandos para instalá-las:




go get github.com/deroproject/derohe
go get fyne.io/fyne/v2
go get github.com/civilware/derodpkg
go get github.com/civilware/Gnomon
go get github.com/blang/semver
go get github.com/sirupsen/logrus


6. Compilar o projeto
Depois que todas as dependências estiverem instaladas, compile o projeto:

go build
Se o processo de compilação for bem-sucedido, um binário será gerado no diretório atual.

7. Executar o Engram
Depois de compilar o binário, você pode executá-lo diretamente:


./engram





screen -S dero_berna ./start.sh


# Oficial Dero node
https://docs.dero.io/getting-started/linux-node.html#preparing-filesystem



# site oficial dero hunter
https://github.com/Hansen333/derohe-Hansen33-mod

# Verficar porta aberta
sudo snap install nmap -y
nmap -p 10100 192.168.15.161
sudo lsof -i :10102
sudo lsof -i :10100

sudo netstat -tuln | grep 10102
sudo netstat -tuln | grep 10100
sudo kill -9 <PID>

    screen -r dero_bridge
screen -r dero_integrator
screen -r tnn

# dero_bridge
screen -S dero_bridge ./derod-linux-amd64 --fastsync


screen -S dero_bridge ./derod-linux-amd64 --fastsync --add-exclusive-node=minernode1.dero.live:11011


# dero_integrator
screen -S dero_bridge_OK ./derod-linux-amd64 --rpc-bind=192.168.15.161:10102 --integrator-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z --node-tag=node_dero  



screen -S dero_integrator ./derod-linux-amd64 --integrator-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z --node-tag=node_dero  




1955.deroluna-mine
screen -S dero_integrator  ./derod-linux-amd64 --integrator-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z --node-tag=node_dero --rpc-bind=127.0.0.1:10100 --getwork-bind=0.0.0.0:10100


#local machine on port 20206



# dero luna
screen -S deroluna-miner ./deroluna-miner -d derosolo.bernacripto.com.br:10100 -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -t $(nproc)



screen -S deroluna-miner ./deroluna-miner -d 192.168.15.161:10100  -w dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z -t $(nproc)




# dero miner (OK)
screen -S dero_miner ./derod-linux-amd64 --wallet-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z \
--mining-threads $(nproc) --daemon-rpc-address 192.168.1.130:10100


sudo screen -S dero_miner dero-miner-linux-amd64 --wallet-address dero1qy25zmq2kdzk644r9v89e5ukvkfahxecprduxcnh7zx0nndnl5y2vqqwpeu7z --mining-threads $(nproc) --daemon-rpc-address 192.168.1.130:10100



# CLI Miner Launch Command:
./dero-miner-linux-amd64 --wallet-address dero1qyg5alz5trr9jt4xw90fqqtgn0eyt7xczfsg2ycdmn6ugu35ttjhqqgx50tsn --mining-threads $(nproc) --daemon-rpc-address 192.168.15.161:10100



# dero luna
../deroluna-miner -d 127.0.0.1:10100 -w dero1qyg5alz5trr9jt4xw90fqqtgn0eyt7xczfsg2ycdmn6ugu35ttjhqqgx50tsn -t 12

# Registrar wallet dero
./dero-miner-linux-amd64 --wallet-address dero1qyg5alz5trr9jt4xw90fqqtgn0eyt7xczfsg2ycdmn6ugu35ttjhqqgx50tsn --mining-threads 12 --daemon-rpc-address 127.0.0.1:10100


#$ #ps aux | grep derod-linux-amd64







 created my ewallet, but I cannot run rpc… Is it correct: ./dero-wallet-rpc --rpc-bind-port 18091 --rpc-bind-ip 127.0.0.1 --wallet-file deroWallet