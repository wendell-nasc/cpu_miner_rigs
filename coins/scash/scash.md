# wallet 

oficial
scash1qvv3wfql4lxy36mkpgx3032nm4pvqmlq00lye6u

nonkyc
scash1qsau6p2skzsmeytlzt7fuegdtscc4cc2mx6szeg





# screen comando
screen -S scash /home/wendell/scash/SRBMiner-Multi-2-6-5/SRBMiner-MULTI --disable-gpu --algorithm randomscash --pool stratum-na.rplant.xyz:7019 --wallet "scash1qvv3wfql4lxy36mkpgx3032nm4pvqmlq00lye6u.$(hostname)"  --donate-level 1  



-Corrigido 23092024 - OK
sudo screen -S xmr_scash /home/wendell/scash/SRBMiner-Multi-2-6-5/SRBMiner-MULTI --disable-gpu --algorithm randomscash --pool stratum-na.rplant.xyz:7019 --wallet "scash1qvv3wfql4lxy36mkpgx3032nm4pvqmlq00lye6u.$(hostname)"  --donate-level 1  











-Oficial
https://github.com/scashnetwork/scash
https://bitcointalk.org/index.php?topic=5491433.0




-Minerador SRBMiner-Multi
https://github.com/doktor83/SRBMiner-Multi

- Minerador Release
https://github.com/doktor83/SRBMiner-Multi/releases


-Pool unica
Rplant pool
https://pool.rplant.xyz/#satoshicash#connect

deroluna e SRBMiner

-Passos

cd /tmp && wget https://github.com/doktor83/SRBMiner-Multi/releases/download/2.6.5/SRBMiner-Multi-2-6-5-Linux.tar.gz && tar -xzvf SRBMiner-Multi-2-6-5-Linux.tar.gz && cd SRBMiner-Multi-2-6-5 && agent-stop && cp SRBMiner-MULTI /opt/mmp/miners/sbrminer/ && agent-start


- Pool mining available on Rplant with SRBMiner:

Code:
SRBMiner-MULTI.exe --algorithm randomscash --pool eu.rplant.xyz:7019 --wallet scash-wallet

stratum-na.rplant.xyz:7019

Extra config:
--algorithm "randomscash"

--pool eu.rplant.xyz:7019
--wallet "scash1qvv3wfql4lxy36mkpgx3032nm4pvqmlq00lye6u"
--worker $(nproc)



# SCASH INSTALL
1
wget https://github.com/scashnetwork/scash/releases/download/scash_v2.0.0-narnia-core-27.0.0/scash-2.0.0-narnia-core-27.0.0-x84_64-pc-linux-gnu.tgz

2
sudo tar -xvf scash-2.0.0-narnia-core-27.0.0-x84_64-pc-linux-gnu.tgz


# SRBMiner Instalação

sudo systemctl stop xmrig.service
mkdir scash
cd scash 
sudo wget https://github.com/doktor83/SRBMiner-Multi/releases/download/2.6.5/SRBMiner-Multi-2-6-5-Linux.tar.gz
tar -xvf SRBMiner-Multi-2-6-5-Linux.tar.gz
cd SRBMiner-Multi-2-6-5/






sudo screen -S xmr_scash /home/wendell/SRBMiner/SRBMiner-Multi-2-6-5/SRBMiner-MULTI --algorithm randomscash --pool stratum-na.rplant.xyz:7019 --wallet "scash1qvv3wfql4lxy36mkpgx3032nm4pvqmlq00lye6u.$(hostname)" --donate-level 1 --disable-cpu   --gpu-boost 



-Corrigido 23092024 - OK
sudo screen -S xmr_scash /home/wendell/scash/SRBMiner-Multi-2-6-5/SRBMiner-MULTI --disable-gpu --algorithm randomscash --pool stratum-na.rplant.xyz:7019 --wallet "scash1qvv3wfql4lxy36mkpgx3032nm4pvqmlq00lye6u.$(hostname)"  --donate-level 1  

--Corrigido 21092024 - OK
sudo screen -S xmr_scash /home/wendell/scash/SRBMiner-Multi-2-6-5/SRBMiner-MULTI --disable-gpu --algorithm randomscash --pool stratum-na.rplant.xyz:7019 --wallet "scash1qvv3wfql4lxy36mkpgx3032nm4pvqmlq00lye6u.$(hostname)"  --donate-level 1 --http-port 37329 --http-access-token auth --http-host 127.0.0.1 --http-no-restricted 

--Corrigido 21092024 - OK - WINDOWS
SRBMiner-MULTI.exe --algorithm randomscash --pool na.rplant.xyz:7019 --wallet scash1qvv3wfql4lxy36mkpgx3032nm4pvqmlq00lye6u.notebook_wendell --disable-gpu --cpu-threads 4 --donate-level 1 --http-port 37329 --http-access-token auth --http-host 127.0.0.1 



stratum+tcp://stratum-eu.rplant.xyz:7019






--Corrigido
./SRBMiner-MULTI --algorithm randomscash --pool eu.rplant.xyz:7019 --wallet "scash1qvv3wfql4lxy36mkpgx3032nm4pvqmlq00lye6u.$(hostname)"  --donate-level 1 --http-port 37329 --http-access-token auth --http-host 127.0.0.1 --http-no-restricted 

--Corrigido2 
./SRBMiner-MULTI --algorithm randomscash --pool eu.rplant.xyz:7019 --wallet "scash1qvv3wfql4lxy36mkpgx3032nm4pvqmlq00lye6u.$(hostname)"  --donate-level 1 







screen -S deroluna-miner /home/wendell/dero_linux_amd64/deroluna-miner --xmrig -d derosolo.bernacripto.com.br:10100 -w scash1qvv3wfql4lxy36mkpgx3032nm4pvqmlq00lye6u -t $(nproc)

