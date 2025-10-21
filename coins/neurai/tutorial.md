- Oficial
https://webwallet.neurai.org/
top view unit modify coast code sign legal decrease divorce leave palm

-github
https://github.com/NeuraiProject

-Wallet Oficial
NTBWnDV7m7KtTpyxS9dsecqHfandGZkWrk

-Wallet komodo
NejQkZBnQcsb2UJxaCy9DXGUNL5EzSCusX

-pool
https://miningpoolstats.stream/neurai
https://pool.rplant.xyz/#neurai


-TeamReadMiner Linux
https://github.com/todxx/teamredminer/releases/download/v0.10.21/teamredminer-v0.10.21-linux.tgz

-TeamReadMiner HiveOS early update oneliner:
mkdir /home/wendell/teamredminer && cd /home/wendell/teamredminer && wget https://github.com/todxx/teamredminer/releases/download/v0.10.21/teamredminer-v0.10.21-linux.tgz -qO- |tar --strip-components=1 -zx 



-Palavras(Duas carteiras)
maze kind special replace inform car ship buyer foil gospel industry galaxy virtual visual vacant risk reflect lounge hollow end soap margin blossom help

-Senha
Dud@271605000000

teamredminer -a kawpow  -o stratum+tcp://stratum-na.rplant.xyz:7029 -u NejQkZBnQcsb2UJxaCy9DXGUNL5EzSCusX.wendelll_komodo

#!/bin/sh
while [ 1 ]; do
	./teamredminer -a kawpow  -o stratum+tcp://stratum-na.rplant.xyz:7029 -u NejQkZBnQcsb2UJxaCy9DXGUNL5EzSCusX.wendelll_komodo
	sleep 5
done


- screen
screen -S teamredminer-neurai /home/wendell/teamredminer/teamredminer -a kawpow  -o stratum+tcp://stratum-na.rplant.xyz:7029 -u NejQkZBnQcsb2UJxaCy9DXGUNL5EzSCusX.wendelll_komodo


# Servico
sudo nano /etc/systemd/system/teamredminer.service

[Unit]
Description=TeamRedMiner Neurai Service
After=network.target

[Service]
ExecStart=/usr/bin/screen -dmS teamredminer-neurai /home/wendell/teamredminer/teamredminer -a kawpow -o stratum+tcp://stratum-na.rplant.xyz:7029 -u NejQkZBnQcsb2UJxaCy9DXGUNL5EzSCusX.wendelll_komodo
Restart=always

[Install]
WantedBy=multi-user.target


sudo systemctl daemon-reload &&  sudo systemctl enable teamredminer.service && sudo systemctl start teamredminer.service

sudo systemctl status teamredminer.service




TUTORIAL


/home/wendell/teamredminer-v0.10.21-linux/teamredminer -a kawpow  -o stratum+tcp://stratum-na.rplant.xyz:7029 -u NejQkZBnQcsb2UJxaCy9DXGUNL5EzSCusX.RX580 
