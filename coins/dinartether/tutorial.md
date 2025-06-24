- Oficial
https://dinartether.com/



-github
https://github.com/Dinartether/Dinartether/releases/



-Wallet desktop
Df658Z5KxtcpxD97vrL6FmQQw7XCX1XEjY


-Palavras
raccoon try auto tomorrow envelope wall ramp tissue sense argue curious trumpet

-pool
https://miningpoolstats.stream/dinartether
https://pool.rplant.xyz/#dinartether


-TeamReadMiner Linux
https://github.com/todxx/teamredminer/releases/download/v0.10.21/teamredminer-v0.10.21-linux.tgz

-TeamReadMiner HiveOS early update oneliner:
mkdir /home/wendell/teamredminer && cd /home/wendell/teamredminer && wget https://github.com/todxx/teamredminer/releases/download/v0.10.21/teamredminer-v0.10.21-linux.tgz -qO- |tar --strip-components=1 -zx 





teamredminer -a kawpow  -o stratum+tcp://stratum-na.rplant.xyz:7049 -u Df658Z5KxtcpxD97vrL6FmQQw7XCX1XEjY.rx580


#!/bin/sh
while [ 1 ]; do
	./teamredminer -a kawpow  -o stratum+tcp://stratum-na.rplant.xyz:7049 -u Df658Z5KxtcpxD97vrL6FmQQw7XCX1XEjY.rx580
	sleep 5
done




- screen
screen -S dinartether /home/wendell/teamredminer/teamredminer -a kawpow  -o stratum+tcp://stratum-na.rplant.xyz:7049 -u Df658Z5KxtcpxD97vrL6FmQQw7XCX1XEjY.rx580




# crontab
/usr/bin/screen -dmS dinartether /home/wendell/teamredminer/teamredminer -a kawpow  -o stratum+tcp://stratum-na.rplant.xyz:7049 -u Df658Z5KxtcpxD97vrL6FmQQw7XCX1XEjY.rx580
sudo EDITOR=nano crontab -e
@reboot /usr/bin/screen -dmS dinartether /home/wendell/teamredminer/teamredminer -a kawpow -o stratum+tcp://stratum-na.rplant.xyz:7049 -u Df658Z5KxtcpxD97vrL6FmQQw7XCX1XEjY.rx580




# Servico
sudo nano /etc/systemd/system/dinartether.service

[Unit]
Description=TeamRedMiner Neurai Service
After=network.target

[Service]
ExecStart=/usr/bin/screen -dmS dinartether /home/wendell/teamredminer/teamredminer -a kawpow  -o stratum+tcp://stratum-na.rplant.xyz:7049 -u Df658Z5KxtcpxD97vrL6FmQQw7XCX1XEjY.rx580
Restart=always
RestartSec=10


[Install]
WantedBy=multi-user.target

-inicia
sudo systemctl daemon-reload &&  sudo systemctl enable dinartether.service && sudo systemctl start dinartether.service
sudo systemctl daemon-reload &&  sudo systemctl enable dinartether.service && sudo systemctl restart dinartether.service


-para
sudo systemctl daemon-reload &&  sudo systemctl disable dinartether.service && sudo systemctl stop dinartether.service


sudo systemctl status dinartether.service



{
  "algorithm": "ethash",
  "pool": "stratum+tcp://etc.2miners.com:1010",
  "wallet": "SEU_ENDERECO_DE_WALLET",
  "gpu_threads_conf": [
    {
      "index": 0,
      "intensity": 30,
      "worksize": 256,
      "threads": 2
    }
  ]
}



./SRBMiner-MULTI --algorithm kawpow --pool stratum+tcp://stratum-na.rplant.xyz:7049 --wallet Df658Z5KxtcpxD97vrL6FmQQw7XCX1XEjY.rx580
